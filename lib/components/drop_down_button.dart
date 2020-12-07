import 'package:cure_at_home/utilities/globalConstants.dart';
import 'package:cure_at_home/utilities/styles/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class DropDown extends StatelessWidget {
  const DropDown({
    @required this.hintText,
    @required this.categoryName,
    @required this.value,
    this.validator,
    this.onChanged,
    this.initialValue,
  });
  final String hintText;
  final String value;
  final List categoryName;
  final Function onChanged;
  final Function validator;
  final String initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kBlackColor, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.5 * SizeConfig.heightMultiplier,
            vertical: 0.1 * SizeConfig.heightMultiplier),
        child: FormField(
          builder: (state) => DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: Text(
                hintText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 2.5 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.w500,
                ),
              ),
              icon: Icon(Icons.keyboard_arrow_down),
              iconSize: 4 * SizeConfig.textMultiplier,
              isExpanded: true,
              value: value,
              style: TextStyle(
                color: kBlackColor,
                fontSize: 2.5 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w500,
              ),
              onChanged: onChanged,
              items: categoryName.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
