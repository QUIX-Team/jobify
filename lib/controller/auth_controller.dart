import 'package:flutter/material.dart';
import 'package:jobify/models/user_model.dart';
import 'package:jobify/my_dio/my_dio.dart';
import 'package:jobify/shared_pref/shared_pref.dart';
import 'package:jobify/view/user%20view/UserAuth/login.dart';
import 'package:jobify/view/user%20view/success.dart';
import 'package:jobify/view/user%20view/success2.dart';
import 'package:jobify/widget/snac.dart';

class AuthController extends ChangeNotifier {
  SharedPref sharedPref = SharedPref();
  UserModel userModel;
  register(UserModel userModel, context) async {
    final response =
        await MyDio.postData('authsignup', myModel: userModel.toJson());

    if (response.error == false) {
      sharedPref.saveUserData(userModel);
      Navigator.pushReplacementNamed(context, Success.id);
    } else if (response.error == true) {
      showSnac(response.errorMessage, context);
    }
  }

  login(String userName, String password, context) async {
    final response = await MyDio.postData('authlogin',
        myModel: {"username": userName, "password": password});

    if (response.error == false) {
      sharedPref.saveUserData(userModel);
      Navigator.pushReplacementNamed(context, SuccessTwo.id);
    } else if (response.error == true) {
      showSnac(response.errorMessage, context);
    }
  }

  signOut(context) async {
    final response = await MyDio.postData(
      'authlogout',
    );

    if (response.error == false) {
      sharedPref.deleteUser();
      Navigator.pushReplacementNamed(context, Login.id);
    } else if (response.error == true) {
      showSnac(response.errorMessage, context);
    }
  }

  bool checkLogin() {
    userModel = sharedPref.getUserData();
    if (userModel == null) {
      return false;
    } else {
      return true;
    }
  }
}
