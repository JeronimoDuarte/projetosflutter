import 'package:flutter/material.dart';
import 'package:responsiveflutter/breakpoints.dart';
import 'package:responsiveflutter/pages/home/widgets/course_item.dart';
class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16
          ),
          padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth > tabletBreakPoint ? 0 : 16 , vertical: 15),
          itemCount: 20,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index){
            return CourseItem();
          },
        );
      }
    );
  }
}
