import 'package:flutter/material.dart';
import 'package:myportfolio/about_me.dart';
import 'package:myportfolio/app_colors.dart';
import 'package:myportfolio/contacts.dart';
import 'package:myportfolio/projects.dart';
import 'package:myportfolio/resume.dart';
import 'package:myportfolio/widgets/responsive.dart';
import 'package:myportfolio/widgets/side_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mahendran K",
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Poppins"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  int selectedIndex = 0;
  changePage(int page) {
    pageController.jumpToPage(page);
    setState(() {
      selectedIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.1,
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.035, vertical: size.height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Mahendran K ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.isMobile(context)
                            ? size.width * 0.06
                            : size.width * 0.015,
                        height: 1.2,
                        color: AppColors.black,
                      ),
                      children: [
                        TextSpan(
                          text: " /  FLUTTER DEVELOPER",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: Responsive.isMobile(context)
                                ? size.width * 0.03
                                : size.width * 0.0085,
                            height: 1.2,
                            fontFamily: "Avenir",
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        SideButtons(
                          btnName: "ABOUT ME",
                          currentIndex: 0,
                          selectedIndex: selectedIndex,
                          onTaped: () {
                            changePage(0);
                          },
                        ),
                        SideButtons(
                          btnName: "RESUME",
                          currentIndex: 1,
                          selectedIndex: selectedIndex,
                          onTaped: () {
                            changePage(1);
                          },
                        ),
                        SideButtons(
                          btnName: "PROJECTS",
                          currentIndex: 2,
                          selectedIndex: selectedIndex,
                          onTaped: () {
                            changePage(2);
                          },
                        ),
                        SideButtons(
                          btnName: "CONTACTS",
                          currentIndex: 3,
                          selectedIndex: selectedIndex,
                          onTaped: () {
                            changePage(3);
                          },
                        ),
                      ],
                    )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: size.height,
                          width: !Responsive.isMobile(context) &&
                                  selectedIndex == 0
                              ? size.width / 2.5
                              : size.width,
                          color: AppColors.basicColor,
                        ),
                        SizedBox(
                          height: size.height,
                          child: PageView(
                            controller: pageController,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              AboutMe(size: size),
                              const Resume(),
                              const Projects(),
                              const Contacts(),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.1,
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (!Responsive.isMobile(context))
                            const Text(
                              "© 2022 by Mahendran K",
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontFamily: "Avenir",
                              ),
                            ),
                          if (!Responsive.isMobile(context)) const Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "Call",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Avenir",
                                ),
                              ),
                              SizedBox(height: size.height * 0.02),
                              InkWell(
                                onTap: () {
                                  canLaunchUrl(Uri(
                                      scheme: 'tel', path: '+91 6383518781'));
                                },
                                child: const Text(
                                  "+91 6383518781",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontFamily: "Avenir",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (Responsive.isMobile(context))
                            const Spacer()
                          else
                            SizedBox(width: size.width * 0.02),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "Write",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Avenir",
                                ),
                              ),
                              SizedBox(height: size.height * 0.02),
                              InkWell(
                                onTap: () {
                                  canLaunchUrl(Uri(
                                      scheme: 'mailto',
                                      path: 'mahendrank715@gmail.com'));
                                },
                                child: const Text(
                                  "mahendrank715@gmail.com",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontFamily: "Avenir",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
