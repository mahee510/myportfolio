import 'package:flutter/material.dart';
import 'package:myportfolio/app_colors.dart';

class EducationalDetails extends StatelessWidget {
  const EducationalDetails({
    Key? key,
    required this.size,
    required this.year,
    required this.courseDetail,
    required this.percentage,
  }) : super(key: key);

  final Size size;
  final String year;
  final String courseDetail;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          year,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Avenir",
            color: AppColors.darkBlue,
            fontSize: 19,
          ),
        ),
        SizedBox(height: size.height * 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: courseDetail,
                style: const TextStyle(
                  fontWeight: FontWeight.w100,
                  fontFamily: "Avenir",
                  color: AppColors.black,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: percentage,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Avenir",
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.01),
            const Text(
              "Komarapalayam",
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontFamily: "Avenir",
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}