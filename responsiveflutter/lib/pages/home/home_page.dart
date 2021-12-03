import 'package:flutter/material.dart';
import 'package:responsiveflutter/breakpoints.dart';
import 'package:responsiveflutter/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsiveflutter/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:responsiveflutter/pages/home/widgets/sections/adventages_section.dart';
import 'package:responsiveflutter/pages/home/widgets/sections/courses_section.dart';
import 'package:responsiveflutter/pages/home/widgets/sections/top_sections.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          appBar: constraints.maxWidth < mobileBreackPoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56))
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
          drawer: constraints.maxWidth < mobileBreackPoint ? Drawer() : null,
          backgroundColor: Colors.black,
          body: Container(
            height: double.infinity,
            child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1400),
                  child: ListView(
                    children: [
                      TopSection(),
                      AdvantageSection(),
                      CoursesSection()
                    ],
                  )),
            ),
          ));
    });
  }
}
