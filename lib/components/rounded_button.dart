import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    @required this.buttonTitle,
    @required this.onPressed,
    @required this.minimumWidth,
    @required this.height,
    @required this.fontsize,
  });

  final String buttonTitle;
  final Function onPressed;
  final double minimumWidth;
  final double height;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: minimumWidth,
      height: height,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          side: BorderSide(color: kBlackColor, width: 2),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: kBlackColor,
            fontWeight: FontWeight.w600,
            fontSize: fontsize,
          ),
        ),
        onPressed: onPressed,
        color: kBlackColor,
      ),
    );
  }
}
