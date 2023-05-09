import 'package:flutter/material.dart';
import 'package:portfolio/views/about_view.dart';
import 'package:portfolio/views/edu_view.dart';
import 'package:portfolio/views/skill_view.dart';

import '../utils/color_constant.dart';
import '../utils/text_constant.dart';
import '../widgets/home_text.dart';
import '../widgets/home_widgets/mobileview_middlecontent.dart';
import '../widgets/home_widgets/mylogo.dart';
import '../widgets/home_widgets/webview_middle_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: MyColor.bgColor,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth < 650) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyLogo(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.menu,
                                    color: MyColor.white,
                                    size: 25,
                                  )),
                            ],
                          ),
                          MobileMiddleContent()
                        ],
                      ),
                    );
                  } else {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 40, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MyLogo(),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                              ),
                              HomeTexts(
                                  text1: MyText.home,
                                  Function: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomePage()));
                                  }
                                  // color: MyColor.blue,
                                  ),
                              HomeTexts(
                                text1: MyText.about,
                                Function: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AboutView()));
                                },
                                // color: MyColor.white,
                              ),
                              HomeTexts(
                                  text1: MyText.education,
                                  Function: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const EduView()));
                                  }
                                  // color: MyColor.white,
                                  ),
                              HomeTexts(
                                  text1: MyText.skill,
                                  Function: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SkillView()));
                                  }
                                  // color: MyColor.white,
                                  ),
                            ],
                          ),
                        ),
                        WebMiddleContent()
                      ],
                    );
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
