import 'package:flutter/material.dart';

topicGridWidget(List<Widget> children) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: GridView.count(
      shrinkWrap: true,
      crossAxisSpacing: 50,
      mainAxisSpacing: 30,
      crossAxisCount: 2,
      childAspectRatio: (110 / 110),
      children: children,
    ),
  );
}
