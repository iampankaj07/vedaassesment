import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User? user;

  void addUser(User userdetail) {
    user = userdetail;
    notifyListeners();
  }
}
