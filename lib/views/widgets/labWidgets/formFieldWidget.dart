import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/colorsClass.dart';

class formFieldWidget extends StatelessWidget {
  final bool isMultiline;
  final String label;
  final String hint;
  const formFieldWidget({
    this.isMultiline = false,
    required this.label,
    required this.hint,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      child: TextFormField(
        maxLines: isMultiline ? 3 : 1,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          hintText: hint,
          alignLabelWithHint: true,
          // labelText: label,
          //remove this property to remove animation
          floatingLabelStyle: TextStyle(
            color: myColors.primaryColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: myColors.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: myColors.primaryColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
