import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  // Initialize the fields
  String userId;
  String userName;
  int contactNo;
  String email;

  // Edit Fields function
  void editFields({String userId, String userName, int phone, String email}) {
    userId = userId;
    userName = userName;
    phone = phone;
    email = email;
    notifyListeners();
  }
}
