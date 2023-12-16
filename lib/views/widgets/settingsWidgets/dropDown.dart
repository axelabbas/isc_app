import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';

class dropDownSetting extends StatelessWidget {
  final String title;
  final IconData icon;
  const dropDownSetting({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: Icon(
            icon,
            color: myColors.primaryColor,
          ),
          title: Text(title, textAlign: TextAlign.center),
          trailing: InkWell(
            onTap: () {
              print("drop the menu down " + title);
            },
            child: Icon(
              Icons.arrow_drop_down,
              size: 35,
            ),
          ),
        ));
  }
}
