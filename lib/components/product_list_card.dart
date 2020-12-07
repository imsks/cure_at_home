import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class ProductListCard extends StatelessWidget {
  const ProductListCard({
    @required this.productName,
    @required this.productCategory,
    @required this.productPrice,
    @required this.image,
  });
  final String productName;
  final String productCategory;
  final double productPrice;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 69 * SizeConfig.heightMultiplier,
      height: 22 * SizeConfig.heightMultiplier,
      child: Card(
        color: kBlackColor,
        elevation: 5,
        semanticContainer: true,
        margin: EdgeInsets.all(
          0.7 * SizeConfig.heightMultiplier,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      child: image,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(
                            1.38 * SizeConfig.heightMultiplier,
                            2.5 * SizeConfig.heightMultiplier,
                            0,
                            4 * SizeConfig.heightMultiplier,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            (productName.toString().length > 11)
                                ? productName.substring(0, 11) + '...'
                                : productName,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 3.8 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                    1.38 * SizeConfig.heightMultiplier,
                                    0,
                                    0 * SizeConfig.heightMultiplier,
                                    2.8 * SizeConfig.heightMultiplier,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    color: kBlackColor,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.4 * SizeConfig.heightMultiplier,
                                        0.4 * SizeConfig.heightMultiplier,
                                        0.4 * SizeConfig.heightMultiplier,
                                        0.4 * SizeConfig.heightMultiplier),
                                    child: Text(
                                      productCategory,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: kBlackColor,
                                          fontSize:
                                              2.3 * SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                        1 * SizeConfig.heightMultiplier,
                                        0,
                                        0,
                                        2.5 * SizeConfig.heightMultiplier,
                                      ),
                                      child: Text(
                                        productPrice.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: (productPrice
                                                        .toString()
                                                        .length >
                                                    5)
                                                ? 2.5 *
                                                    SizeConfig.textMultiplier
                                                : 3.5 *
                                                    SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    // Container(
                                    //   margin: EdgeInsets.only(
                                    //     bottom:
                                    //         2.2 * SizeConfig.heightMultiplier,
                                    //   ),
                                    //   child: Icon(
                                    //     FontAwesomeIcons.rupeeSign,
                                    //     size: (productPrice.toString().length >
                                    //             6)
                                    //         ? 2.5 * SizeConfig.textMultiplier
                                    //         : 3.8 * SizeConfig.textMultiplier,
                                    //     color: Colors.white,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
