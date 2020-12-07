import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cure_at_home/components/app_bar_widget.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        key: _scaffoldKey,
        appBar: AppBarWidget(
          scaffoldKey: _scaffoldKey,
          shopName: 'Cure At Home',
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 5 * SizeConfig.heightMultiplier,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 3 * SizeConfig.heightMultiplier,
              vertical: 0,
            ),
            child: Column(
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      'Search a medicine or product',
                      style: TextStyle(
                        color: kBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 2 * SizeConfig.heightMultiplier,
                        letterSpacing: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 2 * SizeConfig.heightMultiplier,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: kPrimaryColor,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: kWhiteColor,
                            size: 4 * SizeConfig.heightMultiplier,
                          ),
                          hintText: 'What are you looking for?',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: TextStyle(
                            fontSize: 2 * SizeConfig.heightMultiplier,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          thickness: 0.3 * SizeConfig.heightMultiplier,
                        ),
                      ),
                      Text(
                        '    OR    ',
                        style: TextStyle(color: kGreyColor),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.3 * SizeConfig.heightMultiplier,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  margin: EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 5,
                  ),
                  child: Text(
                    'Explore the store'.toUpperCase(),
                    style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 2 * SizeConfig.heightMultiplier,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //
}
