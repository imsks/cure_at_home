import 'dart:ui';
import 'package:cure_at_home/utilities/constants/styles.dart';
import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  final Function onChanged;
  final Function validator;
  final String initialValue;
  final bool choice;

  const InputTextField({
    @required this.hintText,
    @required this.onChanged,
    @required this.validator,
    @required this.choice,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      textAlign: TextAlign.start,
      style: AppTheme.inputTextStyle,
      decoration: InputDecoration(
        labelText: hintText,
        fillColor: kWhiteColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
      obscureText: choice,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
