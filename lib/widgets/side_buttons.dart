import 'package:flutter/material.dart';
import 'package:myportfolio/app_colors.dart';

class SideButtons extends StatefulWidget {
  final String btnName;
  final void Function() onTaped;
  final int selectedIndex;
  final int currentIndex;
  const SideButtons({
    Key? key,
    required this.btnName,
    required this.onTaped,
    required this.selectedIndex,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<SideButtons> createState() => _SideButtonsState();
}

class _SideButtonsState extends State<SideButtons> {
  Color textColor = AppColors.black;
  _onHover(bool status) {
    setState(() {
      if (status && widget.currentIndex != widget.selectedIndex) {
        textColor = AppColors.darkBlue;
      } else {
        textColor = AppColors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTaped,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onHover: (value) {
        _onHover(value);
      },
      child: Text(
        widget.btnName,
        style: TextStyle(
          fontFamily: "Avenir",
          fontWeight: FontWeight.w100,
          color: widget.selectedIndex == widget.currentIndex
              ? AppColors.darkBlue
              : textColor,
        ),
      ),
    );
  }
}
