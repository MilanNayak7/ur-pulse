import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';

import '../../../provider/auth_provider.dart';
import 'consultation.dart';
import 'model/chat_room_model.dart';
import 'model/chat_room_page.dart';
import 'model/user_model.dart';

class SearchPager extends StatefulWidget {
  const SearchPager({Key? key, required this.userModel, required this.firebaseUser}) : super(key: key);
  final UserModel userModel;
  final User firebaseUser;
  @override
  State<SearchPager> createState() => _SearchPagerState();
}

class _SearchPagerState extends State<SearchPager> {
  TextEditingController searchController = TextEditingController();

  Future<ChatRoomModel?> getChatroomModel(UserModel targetUser) async {
    ChatRoomModel? chatRoom;

    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("chatrooms").where("participants.${widget.userModel.uid}", isEqualTo: true).where("participants.${targetUser.uid}", isEqualTo: true).get();

    if(snapshot.docs.length > 0) {
      // Fetch the existing one
      var docData = snapshot.docs[0].data();
      ChatRoomModel existingChatroom = ChatRoomModel.fromMap(docData as Map<String, dynamic>);

      chatRoom = existingChatroom;
    }
    else {
      // Create a new one
      ChatRoomModel newChatroom = ChatRoomModel(
        chatroomid: uuid.v1(),
        lastMessage: "",
        participants: {
          widget.userModel.uid.toString(): true,
          targetUser.uid.toString(): true,
        },
      );

      await FirebaseFirestore.instance.collection("chatrooms").doc(newChatroom.chatroomid).set(newChatroom.toMap());

      chatRoom = newChatroom;

      log("New Chatroom Created!");
    }

    return chatRoom;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        appBarTitle: 'Search by diseases',
        addBackButton: true,
        actionWidgets: [],
        context: context,
      ),
      body: Column(
        children: [
          TextField(
            controller: searchController,
            decoration: InputDecoration(labelText: "Enter symptoms"),
          ),
          CupertinoButton(child: Text("Search"), onPressed: () {}),

          StreamBuilder(
              stream: FirebaseFirestore.instance.collection("users").where("email", isEqualTo: searchController.text).where("email", isNotEqualTo: widget.userModel.email).snapshots(),
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.active) {
                  if(snapshot.hasData) {
                    QuerySnapshot dataSnapshot = snapshot.data as QuerySnapshot;

                    if(dataSnapshot.docs.length > 0) {
                      Map<String, dynamic> userMap = dataSnapshot.docs[0].data() as Map<String, dynamic>;

                      UserModel searchedUser = UserModel.fromMap(userMap);

                      return ListTile(
                        onTap: () async {
                          ChatRoomModel? chatroomModel = await getChatroomModel(searchedUser);

                          if (!mounted) return;
                          if(chatroomModel != null) {
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return ChatRoomPage(
                                    targetUser: searchedUser,
                                    userModel: widget.userModel,
                                    firebaseUser: widget.firebaseUser,
                                    chatroom: chatroomModel,
                                  );
                                }
                            ));
                          }
                        },
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(searchedUser.profilepic!),
                          backgroundColor: Colors.grey[500],
                        ),
                        title: Text(searchedUser.fullname!),
                        subtitle: Text(searchedUser.email!),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      );
                    }
                    else {
                      return Text("No results found!");
                    }

                  }
                  else if(snapshot.hasError) {
                    return Text("An error occured!");
                  }
                  else {
                    return Text("No results found!");
                  }
                }
                else {
                  return CircularProgressIndicator();
                }
              }
          ),
        ],
      ),
    );
  }
}
