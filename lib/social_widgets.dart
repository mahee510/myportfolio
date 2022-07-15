import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidgets extends StatelessWidget {
  const SocialWidgets({
    Key? key,
    required this.size,
    required this.iconSize,
  }) : super(key: key);

  final Size size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.045,
      width: size.width,
      color: Colors.white,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () async {
              await launchUrl(
                  Uri.parse('https://www.facebook.com/MahendranK510/'));
            },
            icon: Icon(
              FontAwesomeIcons.facebookF,
              size: iconSize,
            ),
          ),
          IconButton(
            onPressed: () async {
              await launchUrl(Uri.parse('https://twitter.com/Mahee5109'));
            },
            icon: Icon(
              FontAwesomeIcons.twitter,
              size: iconSize,
            ),
          ),
          IconButton(
            onPressed: () async {
              await launchUrl(
                  Uri.parse('https://www.linkedin.com/in/mahendran715/'));
            },
            icon: Icon(
              FontAwesomeIcons.linkedinIn,
              size: iconSize,
            ),
          ),
          IconButton(
            onPressed: () async {
              await launchUrl(
                  Uri.parse('https://www.instagram.com/mahee_5109/'));
            },
            icon: Icon(
              FontAwesomeIcons.instagram,
              size: iconSize,
            ),
          ),
          IconButton(
            onPressed: () async {
              await launchUrl(Uri.parse('https://github.com/mahee510'));
            },
            icon: const Icon(FontAwesomeIcons.github),
          ),
          IconButton(
            onPressed: () async {
              await launchUrl(Uri.parse(
                  'https://stackoverflow.com/users/13080353/mahendran-k'));
            },
            icon: Icon(
              FontAwesomeIcons.stackOverflow,
              size: iconSize,
            ),
          )
        ],
      ),
    );
  }
}
