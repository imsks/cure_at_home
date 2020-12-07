import 'package:flutter/material.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';

class RectButton extends StatelessWidget {
  const RectButton({
    @required this.buttonTitle,
    @required this.buttonColor,
    @required this.buttonTextColor,
    @required this.buttonTextSize,
    @required this.onPressed,
    @required this.borderColor,
    @required this.minimumWidth,
    @required this.height,
  });
  final String buttonTitle;

  final double minimumWidth;
  final double height;
  final Color buttonColor;
  final Color buttonTextColor;
  final double buttonTextSize;
  final Function onPressed;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: minimumWidth,
      height: height,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(1 * SizeConfig.heightMultiplier),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: buttonTextColor,
            fontWeight: FontWeight.w600,
            fontSize: buttonTextSize,
          ),
        ),
        onPressed: onPressed,
        color: buttonColor,
      ),
    );
  }
}
