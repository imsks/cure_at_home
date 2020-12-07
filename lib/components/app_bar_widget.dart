import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cure_at_home/utilities/globalConstants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    this.shopName,
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final String shopName;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      backgroundColor: kPrimaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            shopName,
            textAlign: TextAlign.left,
            style: TextStyle(color: kWhiteColor, fontSize: 16),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_bag,
              color: kWhiteColor,
              size: 36.0,
            ),
            color: Colors.pink,
            onPressed: () {
              print("Clicked Cart");
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
