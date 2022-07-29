import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectContainer extends StatefulWidget {
  const ProjectContainer({
    Key? key,
    required this.size,
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
    required this.description,
    required this.siteUrl,
    required this.appUrl,
    required this.imageURL,
  }) : super(key: key);

  final Size size;
  final String title;
  final String subTitle1;
  final String subTitle2;
  final String description;
  final String siteUrl;
  final String appUrl;
  final String imageURL;

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  Color btn1text = AppColors.black;

  Color btn2text = AppColors.black;

  onBtn1Hover(bool value) {
    setState(() {
      if (value) {
        btn1text = AppColors.darkBlue;
      } else {
        btn1text = AppColors.black;
      }
    });
  }

  onBtn2Hover(bool value) {
    setState(() {
      if (value) {
        btn2text = AppColors.darkBlue;
      } else {
        btn2text = AppColors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 45),
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
      height: widget.size.height * 0.3,
      width: widget.size.width * 0.04,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 5, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    if (widget.appUrl.isNotEmpty) {
                      launchUrl(Uri.parse(widget.appUrl));
                    }
                  },
                  onHover: onBtn2Hover,
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Avenir",
                      color: btn2text,
                      fontSize: 19,
                    ),
                  ),
                ),
                SizedBox(height: widget.size.height * 0.015),
                Text(
                  widget.subTitle1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w100,
                    fontFamily: "Avenir",
                    color: AppColors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: widget.size.height * 0.02),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(widget.siteUrl));
                  },
                  onHover: onBtn1Hover,
                  child: Text(
                    widget.subTitle2,
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: "Avenir",
                      color: btn1text,
                    ),
                  ),
                ),
                SizedBox(height: widget.size.height * 0.015),
                SizedBox(
                  width: widget.size.width / 7,
                  child: Text(
                    widget.description,
                    style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: "Avenir",
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            width: widget.size.width / 7,
            child: CachedNetworkImage(
              imageUrl: widget.imageURL,
              fit: BoxFit.fill,
              alignment: Alignment.center,
              errorWidget: (context, _, __) => const Center(
                child: FlutterLogo(size: 150),
              ),
            ),
          )
        ],
      ),
    );
  }
}
