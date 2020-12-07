import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:flutter/material.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';

class WhiteTextFormField extends StatelessWidget {
  const WhiteTextFormField({
    @required this.hintText,
    @required this.obscure,
    this.validator,
    this.onChanged,
    this.initialValue,
    this.maxLines,
  });
  final String hintText;
  final bool obscure;
  final Function onChanged;
  final Function validator;
  final String initialValue;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      obscureText: obscure,
      style: TextStyle(
          fontSize: 2.5 * SizeConfig.textMultiplier,
          fontWeight: FontWeight.w500,
          color: kBlackColor),
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 2.5 * SizeConfig.textMultiplier,
            fontWeight: FontWeight.w500,
            color: kBlackColor),
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kBlackColor,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBlackColor, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
