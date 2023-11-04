import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';

class mainButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onTap;

  const mainButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.75,
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
          onPressed: onTap,
          child: Center(
            child: Text(text),
          )),
    );
  }
}
