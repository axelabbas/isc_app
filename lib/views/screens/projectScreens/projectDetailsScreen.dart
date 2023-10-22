import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/models/studentProject.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';

class ProjectDetailsScreen extends StatefulWidget {
  final StudentProject project;
  ProjectDetailsScreen({super.key, required this.project});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  double _anchor = 0.0;
  bool _center = true;
  double _velocityFactor = 0.2;
  final double _itemExtent = 320;
  late InfiniteScrollController _controller;
  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBarWidget("Project Details"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.project.title,
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                      color: myColors.primaryColor),
                ),
                Icon(Icons.favorite_border_outlined)
              ],
            ),
            Text(
              widget.project.bio,
            ),
            Container(
              height: 400,
              child: InfiniteCarousel.builder(
                itemExtent: _itemExtent,
                center: _center,
                anchor: _anchor,
                velocityFactor: _velocityFactor,
                itemCount: widget.project.images.length,
                controller: _controller,
                axisDirection: Axis.horizontal,
                loop: false,
                physics: InfiniteScrollPhysics(),
                itemBuilder: (context, itemIndex, realIndex) {
                  final currentOffset = _itemExtent * realIndex;
                  return AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        final diff = (_controller.offset - currentOffset);
                        const maxPadding = 10.0;
                        final carouselRatio = _itemExtent / maxPadding;

                        return Padding(
                          padding: EdgeInsets.only(
                            top: (diff / carouselRatio).abs(),
                            bottom: (diff / carouselRatio).abs(),
                          ),
                          child: child,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Image.asset(
                          widget.project.images[itemIndex],
                          fit: BoxFit.fill,
                        ),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
