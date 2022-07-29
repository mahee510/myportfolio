import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/app_colors.dart';
import 'package:myportfolio/widgets/project_list.dart';
import 'package:myportfolio/widgets/project_widget.dart';

class Projects extends StatefulWidget {
  final Size size;
  const Projects({Key? key, required this.size}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          widget.size.width / 3,
          widget.size.height / 9,
          widget.size.width / 3,
          0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "PROJECTS(${projectList.length})",
              style: const TextStyle(
                fontSize: 25,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: widget.size.height * 0.02),
            ListView.builder(
              shrinkWrap: true,
              itemCount: projectList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: FadeInUpBig(
                    child: ProjectContainer(
                      size: widget.size,
                      title: projectList[index]['projectName'],
                      subTitle1: projectList[index]['jobTitle'],
                      subTitle2: projectList[index]['companyName'],
                      description: projectList[index]['description'],
                      siteUrl: projectList[index]['url'],
                      appUrl: projectList[index]['appUrl'],
                      imageURL: projectList[index]['imageURL'],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
