import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../user/features_module/consultation/model/user_model.dart';

class AuthProvider extends ChangeNotifier{
  late UserModel _userModel;
   UserModel get userModel => _userModel;

  void updateAuthProvider(UserModel userModel){
    _userModel = userModel;
    notifyListeners();
  }

  late User _user;
  User get user => _user;


  void updateUserProvider(User user){
    _user = user;
    notifyListeners();
  }
}