import 'dart:ui';
import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:flutter/material.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    @required this.productName,
    @required this.productPrice,
    @required this.productImage,
  });
  final String productName;
  final String productPrice;
  final String productImage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("s");
      },
      child: Container(
        // padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.all(3.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                productImage,
                fit: BoxFit.fill,
                height: 18 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: kBlackColor,
                        fontSize: 2.5 * SizeConfig.heightMultiplier,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        productPrice,
                        style: TextStyle(
                            color: kBlackColor,
                            fontSize: 2 * SizeConfig.heightMultiplier,
                            fontWeight: FontWeight.w500),
                      ),
                      // Icon(
                      //   FontAwesomeIcons.rupeeSign,
                      //   color: kBlackColor,
                      //   size: 2 * SizeConfig.heightMultiplier,
                      // )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {},
                child:
                    Text("Add to cart", style: TextStyle(color: kWhiteColor)),
                color: kPrimaryColor,
                elevation: 1,
                highlightElevation: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
