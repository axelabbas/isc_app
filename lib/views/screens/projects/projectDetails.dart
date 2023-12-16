import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/models/studentProject.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';

class ProjectDetailsScreen extends StatefulWidget {
  final StudentProject project;
  const ProjectDetailsScreen({super.key, required this.project});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  final double _anchor = 0.0;
  final bool _center = true;
  final double _velocityFactor = 0.2;
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
      appBar: customAppBar(context, "Project Details"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.project.title,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 34.sp,
                            fontWeight: FontWeight.w400,
                            color: myColors.primaryColor),
                      ),
                      Icon(Icons.favorite_border_outlined)
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.project.bio,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
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
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 27.sp,
                    ),
                    title: Text(widget.project.teamMembers.join(", ")),
                    horizontalTitleGap: 5,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lightbulb,
                      size: 27.sp,
                    ),
                    title: Text(widget.project.isAssisted
                        ? "This project was assisted by ISC"
                        : "This project was not assisted by ISC"),
                    horizontalTitleGap: 5,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lightbulb,
                      size: 27.sp,
                    ),
                    title: Text("${DateTime.now()
                            .difference(widget.project.dateCompleted)
                            .inDays} days ago"),
                    horizontalTitleGap: 5,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.place,
                      size: 27.sp,
                    ),
                    title: Text(widget.project.platform),
                    horizontalTitleGap: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
