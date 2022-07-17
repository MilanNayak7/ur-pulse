// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:ur_pulse_modified/auth/firebase_helper.dart';
// import 'package:ur_pulse_modified/auth/sign_up_page.dart';
// import 'package:ur_pulse_modified/home/home2.dart';
// import 'package:ur_pulse_modified/user/features_module/consultation/model/user_model.dart';
//
//
// class CheckUser extends StatefulWidget {
//   const CheckUser({Key? key}) : super(key: key);
//
//   @override
//   State<CheckUser> createState() => _CheckUserState();
// }
//
// class _CheckUserState extends State<CheckUser> {
//   User? currentUser = FirebaseAuth.instance.currentUser;
//
//   Future fetchUser() async{
//   if(currentUser!= null){
//     UserModel?  thisUserModel = await FirebaseHelper.getUserModelById(currentUser!.uid);
//     if(thisUserModel != null){
//             return HomePage();
//     }else{
//          return const SignUpPage();
//     }
//   }else{
//     return const SignUpPage();
//   }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return fetchUser();
//   }
// }
//

// // class CheckUser{
// //
// //  Future fetchUser() async{
// //     User? currentUser = FirebaseAuth.instance.currentUser;
// //     if(currentUser!= null){
// //       UserModel?  thisUserModel = await FirebaseHelper.getUserModelById(currentUser.uid);
// //       if(thisUserModel != null){
// //         return HomePage();
// //       }else{
// //         return const SignUpPage();
// //       }
// //     }else{
// //       return const SignUpPage();
// //     }
// //   }
// // }