import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // if width is more than 900 consider as desktop
      if (constraints.maxWidth >= 1100) {
        return desktop;
      }

      // if width is less than 900 and more than 650 it consider as tablet
      else if (constraints.maxWidth >= 850) {
        return tablet;
      }

      // or less than that consider as mobile
      else {
        return mobile;
      }
    });
  }
}
