import 'package:cure_at_home/services/sharedPrefs.dart';
import 'package:flutter/material.dart';
import 'package:cure_at_home/components/Button.dart';
import 'package:cure_at_home/components/input_text_field.dart';
import 'package:cure_at_home/services/auth_service.dart';
import 'package:cure_at_home/services/wrapper.dart';
import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';
import 'package:cure_at_home/utilities/constants/styles.dart';
import 'package:page_transition/page_transition.dart';
import 'package:toast/toast.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'loginScreen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String userName = "";
  String password = "";
  final loginController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  AuthService auth = new AuthService();

  Future _submitform() async {
    if (_formKey.currentState.validate()) {
      try {
        var sharedPref = SharedPref();
        sharedPref.save('user', 123);

        // await auth.signup(userName, password);

        Navigator.pop(context);
        Navigator.push(context,
            PageTransition(type: PageTransitionType.fade, child: Wrapper()));
      } catch (e) {
        Toast.show(e.message, context,
            duration: Toast.LENGTH_SHORT,
            gravity: Toast.BOTTOM,
            textColor: Colors.white,
            backgroundColor: Colors.black38);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 2 * SizeConfig.heightMultiplier,
              vertical: 4 * SizeConfig.heightMultiplier,
            ),
            child: Form(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 2 * SizeConfig.heightMultiplier,
                      vertical: 10 * SizeConfig.heightMultiplier,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(kAppName,
                            style: AppTheme.dashboardAppName.copyWith(
                              fontSize: 5 * SizeConfig.heightMultiplier,
                            )),
                        Text(
                          kAppTagLine,
                          style: AppTheme.tagLine,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 2 * SizeConfig.heightMultiplier,
                      vertical: 2 * SizeConfig.heightMultiplier,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Ready to signup?",
                              style: TextStyle(
                                  fontSize: 3 * SizeConfig.heightMultiplier,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 2.76 * SizeConfig.heightMultiplier,
                          ),
                          InputTextField(
                            hintText: "Enter your name",
                            choice: false,
                            onChanged: (value) {
                              setState(() {
                                userName = value;
                              });
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter user name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 2.76 * SizeConfig.heightMultiplier,
                          ),
                          InputTextField(
                            hintText: "Enter your password",
                            choice: true,
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Please enter a valid password';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.2 * SizeConfig.heightMultiplier,
                  ),
                  Center(
                    child: Button(
                      buttonTitle: "Sign up",
                      buttonColor: kPrimaryColor,
                      buttonTextColor: Colors.white,
                      buttonTextSize: 3.2 * SizeConfig.heightMultiplier,
                      minimumWidth: 33 * SizeConfig.heightMultiplier,
                      height: 6.9 * SizeConfig.heightMultiplier,
                      onPressed: () async {
                        try {
                          await _submitform();
                        } catch (e) {
                          print(e);
                        }
                        //STOP LOADING HERE
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}