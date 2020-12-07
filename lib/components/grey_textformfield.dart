import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:flutter/material.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';

class GreyTextFormField extends StatelessWidget {
  const GreyTextFormField({
    @required this.hintText,
    @required this.obscure,
    this.validator,
    this.onChanged,
    this.initialValue,
  });
  final String hintText;
  final bool obscure;
  final Function onChanged;
  final Function validator;
  final String initialValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        fillColor: kBlackColor,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 3 * SizeConfig.textMultiplier,
            fontWeight: FontWeight.w500),
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kBlackColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
