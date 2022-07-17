import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/user/features_module/consultation/model/user_model.dart';

import '../../../../provider/auth_provider.dart';
import '../search_page.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserModel userModel = Provider.of<AuthProvider>(context,listen:false).userModel;
    User firebaseUser = Provider.of<AuthProvider>(context,listen:false).user;
    return Scaffold(
      appBar:CommonAppBar(context:context, actionWidgets: [], addBackButton:true, appBarTitle: 'chat',),
      body:SafeArea(
        child:Container(),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){
          Get.to(SearchPager(userModel: userModel, firebaseUser: firebaseUser,));
        },
        child:Icon(Icons.search),
      ),
    );
  }
}
