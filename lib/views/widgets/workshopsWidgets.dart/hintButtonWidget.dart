import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';

class buttonHintWidget extends StatelessWidget {
  final String title;
  final String imgPath;
  const buttonHintWidget({
    super.key,
    required this.title,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.black.withOpacity(0.5),
                elevation: 6,
                side: BorderSide(width: 2.0, color: Colors.white),
                backgroundColor: myColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Center(
                child: ImageIcon(
                  AssetImage(imgPath),
                  color: Colors.white,
                ),
              ),
            )),
      ],
    );
  }
}
