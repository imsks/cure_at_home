import 'package:flutter/cupertino.dart';
import 'package:cure_at_home/screens/auth/signin.dart';
import 'package:cure_at_home/screens/user/dashboard.dart';
import 'package:cure_at_home/services/auth_service.dart';
import 'package:cure_at_home/services/sharedPrefs.dart';

class Wrapper extends StatelessWidget {
  static const String id = 'wrapper';
  AuthService auth = new AuthService();
  @override
  Widget build(BuildContext context) {
    SharedPref sharedPref = SharedPref();
    Future loadSharedPrefs() async {
      try {
        var data = await sharedPref.read("user");
        if (data != null) {
          return true;
        } else {
          return false;
        }
      } catch (Exception) {
        return false;
      }
    }

    return FutureBuilder(
      future: loadSharedPrefs(),
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          if (snapshot.data) {
            return Dashboard();
          } else
            return SignIn();
        } else {
          return Container();
        }
      },
    );
  }
}
