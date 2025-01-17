import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:cure_at_home/utilities/styles/splashBgDecoration.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';
import 'package:cure_at_home/utilities/constants/styles.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class Splash extends StatefulWidget {
  static const String id = 'splash';

  // Background color of the screen
  final List<Color> backgroundColor;

  // Time for which screen will show up
  final int duration;

  // Next screen it will land after the splash screen => Route name
  final String nextScreenPath;

  // Check if user is debugging
  final bool debug;

  Splash(
      {this.backgroundColor, this.duration, this.nextScreenPath, this.debug});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    if (!widget.debug) {
      new Future.delayed(
        Duration(seconds: widget.duration),
        () => Navigator.pushReplacementNamed(context, widget.nextScreenPath),
      );
    }
  }

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return Scaffold(
              body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: bgBoxDecoration(widget.backgroundColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(kAppName, style: AppTheme.splashScreenAppName),
                    Text(kAppTagLine, style: AppTheme.splashScreenTagLine),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
