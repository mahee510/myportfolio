import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/app_colors.dart';
import 'package:myportfolio/social_widgets.dart';
import 'package:myportfolio/widgets/responsive.dart';
import 'package:myportfolio/widgets/row_or_column.dart';

class AboutMe extends StatefulWidget {
  final Size size;
  const AboutMe({Key? key, required this.size}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  Color btn1bg = AppColors.darkBlue;
  Color btn2bg = AppColors.white;

  Color btn1text = AppColors.white;
  Color btn2text = AppColors.black;

  Color btn2border = AppColors.black;

  @override
  void initState() {
    super.initState();
  }

  int year = (DateTime.now().year - 2019);

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

  onBtn2Hover(bool value) {
    setState(() {
      if (value) {
        btn2bg = AppColors.darkBlue;
        btn2text = AppColors.white;
        btn2border = AppColors.darkBlue;
      } else {
        btn2bg = AppColors.white;
        btn2text = AppColors.black;
        btn2border = AppColors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Responsive.isMobile(context)
            ? widget.size.width * 0.13
            : widget.size.width * 0.26,
        top: widget.size.height * 0.2,
      ),
      child: SingleChildScrollView(
        child: RowOrColumn(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeIn(
              duration: const Duration(seconds: 1),
              child: Container(
                height: widget.size.height * 0.525,
                width: widget.size.height * 0.378,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.basicLightColor,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      color: AppColors.shadow,
                      offset: Offset(-11.31, 11.31),
                    ),
                    // BoxShadow(
                    //   blurRadius: 10,
                    //   color: Color.fromRGBO(138, 131, 124, 0.23),
                    //   offset: Offset(17, 0),
                    // ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: widget.size.height * 0.055),
                    const CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),
                    SizedBox(height: widget.size.height * 0.04),
                    Text(
                      "Mahendran K",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.isMobile(context)
                            ? widget.size.width * 0.06
                            : widget.size.width * 0.015,
                      ),
                    ),
                    SizedBox(height: widget.size.height * 0.03),
                    Container(
                      width: widget.size.width * 0.04,
                      height: widget.size.height * 0.002,
                      color: AppColors.darkBlue,
                    ),
                    SizedBox(height: widget.size.height * 0.03),
                    const Text(
                      "FLUTTER DEVELOPER",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                        height: 1.2,
                        fontFamily: "Avenir",
                        letterSpacing: 4,
                      ),
                    ),
                    const Spacer(),
                    SocialWidgets(size: widget.size, iconSize: 20),
                  ],
                ),
              ),
            ),
            SizedBox(width: widget.size.width * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BounceInDown(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      color: AppColors.black,
                      fontSize: Responsive.isMobile(context)
                          ? widget.size.width * 0.1
                          : widget.size.width * 0.05,
                    ),
                  ),
                ),
                ZoomIn(
                  child: Text(
                    "Here's who I am & what I do",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontFamily: "Avenir",
                          color: AppColors.black,
                        ),
                  ),
                ),
                SizedBox(height: widget.size.height * 0.02),
                Row(
                  children: [
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
                          fixedSize: MaterialStateProperty.all(
                            Size(
                              Responsive.isMobile(context)
                                  ? widget.size.width * 0.3
                                  : widget.size.width * 0.06,
                              Responsive.isMobile(context)
                                  ? widget.size.height * 0.05
                                  : widget.size.height * 0.03,
                            ),
                          ),
                        ),
                        child: Text(
                          "RESUME",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Avenir",
                            color: btn1text,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: widget.size.width * 0.01),
                    ElasticIn(
                      child: OutlinedButton(
                        onPressed: () {},
                        onHover: onBtn2Hover,
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(btn2bg),
                          side: MaterialStateProperty.all(
                            BorderSide(color: btn2border),
                          ),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          ),
                          fixedSize: MaterialStateProperty.all(
                            Size(
                              Responsive.isMobile(context)
                                  ? widget.size.width * 0.3
                                  : widget.size.width * 0.06,
                              Responsive.isMobile(context)
                                  ? widget.size.height * 0.05
                                  : widget.size.height * 0.03,
                            ),
                          ),
                        ),
                        child: Text(
                          "PROJECTS",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Avenir",
                            color: btn2text,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: widget.size.height * 0.04),
                SizedBox(
                  width: Responsive.isMobile(context)
                      ? widget.size.width
                      : widget.size.width * 0.2,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "I am Mahendran, a flutter developer with $year years of experience. I have good exposure to creating mobile applications and am involved in all phases of the projects. \nI'll assist you with several updates for various platforms. By considering your requirements, I'll try to give the best and most creative solution.",
                        speed: const Duration(milliseconds: 30),
                        textStyle: const TextStyle(
                          fontFamily: "Avenir",
                          color: AppColors.black,
                          height: 1.5,
                          letterSpacing: 2.0,
                          fontSize: 17,
                        ),
                      ),
                    ],
                    isRepeatingAnimation: false,
                  ),
                ),
                SizedBox(height: widget.size.height * 0.04),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
