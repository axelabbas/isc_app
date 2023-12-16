import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/colorsClass.dart';

class mainButtonWidget extends StatelessWidget {
  final String text;
  final Function()? buttonClick;

  const mainButtonWidget({
    super.key,
    required this.text,
    required this.buttonClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 300.w,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black.withOpacity(0.5),
            elevation: 5,
            side: BorderSide(width: 1.0, color: Colors.white),
            backgroundColor: myColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: buttonClick,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
            ),
          )),
    );
  }
}
