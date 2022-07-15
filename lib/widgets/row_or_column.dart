import 'package:flutter/material.dart';
import 'package:myportfolio/widgets/responsive.dart';

class RowOrColumn extends StatelessWidget {
  final List<Widget> children;
  const RowOrColumn({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      );
    }
  }
}
