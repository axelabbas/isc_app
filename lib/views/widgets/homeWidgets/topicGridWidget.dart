import 'package:flutter/material.dart';

topicGridWidget(List<Widget> children) {
  return GridView.count(
    shrinkWrap: true,
    crossAxisSpacing: 45,
    mainAxisSpacing: 30,
    crossAxisCount: 2,
    childAspectRatio: (3 / 3.5),
    children: children,
  );
}
