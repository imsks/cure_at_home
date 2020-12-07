import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cure_at_home/models/users.dart';
import 'package:cure_at_home/services/wrapper.dart';
import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:cure_at_home/screens/static/splash.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';
import 'package:cure_at_home/screens/user/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: UserProvider(),
        ),
      ],
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: kFontFamily,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  backgroundColor: Colors.white,
                  appBarTheme: AppBarTheme(
                    color: Colors.white,
                    elevation: 0,
                  ),
                ),
                initialRoute: Splash.id,
                routes: {
                  Splash.id: (context) => Splash(
                        backgroundColor: const [
                          kPrimaryColor,
                        ],
                        duration: 1,
                        nextScreenPath: Wrapper.id,
                        debug: false,
                      ),
                  Wrapper.id: (context) => Wrapper(),
                },
              );
            },
          );
        },
      ),
    );
  }
}
