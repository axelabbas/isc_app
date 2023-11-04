import 'package:flutter/material.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:provider/provider.dart';

class typesListWidget extends StatelessWidget {
  const typesListWidget({
    super.key,
    required this.types,
    required this.selectedValueIndex,
  });

  final Map types;
  final int selectedValueIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: types.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                left: index == 0
                    ? 0
                    : MediaQuery.of(context).size.width *
                        0.05, // Space on the left of the first item
                right: index == types.length - 1
                    ? 0
                    : MediaQuery.of(context).size.width *
                        0.05, // Space on the right of all items except the last
              ),
              child: typeWidget(
                selectedValueIndex: selectedValueIndex,
                projectTypes: types,
                index: index,
              ),
            );
          },
        ),
      ),
    );
  }
}

class typeWidget extends StatelessWidget {
  const typeWidget(
      {super.key,
      required this.selectedValueIndex,
      required this.projectTypes,
      required this.index});

  final int selectedValueIndex;
  final int index;
  final Map projectTypes;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<RadioButtonModel>().setSelectedValue(index);
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: selectedValueIndex == index
              ? myColors.primaryColor
              : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: myColors.primaryColor,
          ),
        ),
        child: Center(
          child: Text(
            projectTypes[index],
            style: TextStyle(
              color: selectedValueIndex == index
                  ? Colors.white
                  : myColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
