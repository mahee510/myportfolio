import 'package:flutter/material.dart';
import 'package:myportfolio/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    Key? key,
    required this.size,
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
    required this.subTitle3,
    required this.description,
    required this.siteUrl,
  }) : super(key: key);

  final Size size;
  final String title;
  final String subTitle1;
  final String subTitle2;
  final String subTitle3;
  final String description;
  final String siteUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 45),
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: AppColors.shadow,
            offset: Offset(-11.31, 11.31),
          ),
        ],
      ),
      height: size.height * 0.3,
      width: size.width * 0.04,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "Avenir",
              color: AppColors.darkBlue,
              fontSize: 19,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subTitle1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: "Avenir",
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () {
                      launchUrl(Uri.parse(siteUrl));
                    },
                    child: Text(
                      subTitle2,
                      style: const TextStyle(
                        fontWeight: FontWeight.w100,
                        fontFamily: "Avenir",
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Text(
                    subTitle3,
                    style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: "Avenir",
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(width: size.width * 0.04),
              Expanded(
                child: Text(
                  description,
                  style: const TextStyle(
                    fontFamily: "Avenir",
                    color: AppColors.black,
                    height: 1.5,
                    letterSpacing: 2.0,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}