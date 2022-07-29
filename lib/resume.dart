import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/app_colors.dart';
import 'package:myportfolio/widgets/educational.dart';
import 'package:myportfolio/widgets/expericence.dart';

class Resume extends StatefulWidget {
  final Size size;
  const Resume({Key? key, required this.size}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  Color btn1bg = AppColors.darkBlue;
  Color btn1text = AppColors.white;

  onBtn1Hover(bool value) {
    setState(() {
      if (value) {
        btn1bg = AppColors.white;
        btn1text = AppColors.black;
      } else {
        btn1bg = AppColors.darkBlue;
        btn1text = AppColors.white;
      }
    });
  }

  List<Map<String, dynamic>> experience = [
    {
      "jobYear": "2021 - Present",
      "jobTitle": "Flutter Developer",
      "companyName": "Digital Orbis Creators LLP",
      "companyLocation": "Coimbatore",
      "url": "https://www.digitalorbiscreators.org/",
      "description":
          "It was my current profile, where I learned Team management, Client handling, Teaching others, and Web app development.\nAlso, I have gained good skills in firebase databases, hosting, and AdMob. Then learned to launch apps in the google play store."
    },
    {
      "jobYear": "2020 - 2021",
      "jobTitle": "Mobile App Developer",
      "companyName": "IGuider Learning Pvt Ltd",
      "companyLocation": "Erode",
      "url": "https://guidely.in/",
      "description":
          "In this company, I have learned dart language, video player, audio player, third party integrations, JSON structure, and firebase integrations.\nAlmost I gained good knowledge in all the important features to develop a complete mobile application."
    },
    {
      "jobYear": "2019 - 2021",
      "jobTitle": "App Developer",
      "companyName": "Ionstar India Pvt Ltd",
      "companyLocation": "Erode",
      "url": "http://ionstar.in/",
      "description":
          "It was my first job. I started as a MEAN stack developer. Then I started learning mobile application development in a flutter.\nHere I have learned the Basics of flutter, Google map integration, and API integrations."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          widget.size.width / 3,
          widget.size.height / 5,
          widget.size.width / 3,
          0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Experience",
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ElasticIn(
                  child: OutlinedButton(
                    onPressed: () {},
                    onHover: onBtn1Hover,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(btn1bg),
                      side: MaterialStateProperty.all(
                        const BorderSide(
                          color: AppColors.darkBlue,
                          width: 1.5,
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      ),
                    ),
                    child: Text(
                      "Download CV",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Avenir",
                        color: btn1text,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: widget.size.height * 0.02),
            ListView.builder(
              shrinkWrap: true,
              itemCount: experience.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: FadeInUpBig(
                    child: ExperienceContainer(
                      size: widget.size,
                      title: experience[index]['jobYear'],
                      subTitle1: experience[index]['jobTitle'],
                      subTitle2: experience[index]['companyName'],
                      subTitle3: experience[index]['companyLocation'],
                      description: experience[index]['description'],
                      siteUrl: experience[index]['url'],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: widget.size.height * 0.04),
            const Text(
              "Education",
              style: TextStyle(
                fontSize: 25,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: widget.size.height * 0.02),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 45),
              margin: const EdgeInsets.only(bottom: 25),
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
              width: widget.size.width,
              constraints: BoxConstraints(
                minHeight: widget.size.height * 0.3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EducationalDetails(
                    size: widget.size,
                    year: "2016 - 2019",
                    courseDetail: "BCA - JKKN College of Arts and Science",
                    percentage: " - 67%",
                  ),
                  SizedBox(height: widget.size.height * 0.03),
                  EducationalDetails(
                    size: widget.size,
                    year: "2015 - 2016",
                    courseDetail: "HSC - Govt. Boys Higher Secondary School",
                    percentage: " - 74.2%",
                  ),
                  SizedBox(height: widget.size.height * 0.03),
                  EducationalDetails(
                    size: widget.size,
                    year: "2013 - 2014",
                    courseDetail: "SSLC - Govt. Boys Higher Secondary School",
                    percentage: " - 85.8%",
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
