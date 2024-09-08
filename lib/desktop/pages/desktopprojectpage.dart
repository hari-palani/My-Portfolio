import "package:flutter/material.dart";
import "package:myportfolio/components/mprojectlist.dart";
import "package:myportfolio/components/project.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class DesktopProjectPage extends StatelessWidget {
  DesktopProjectPage({super.key});
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PageView(
            controller: controller,
            children: [
              ProjectPage(
                size: size,
                title: title[0],
                content: content[0],
                ghlink: ghlink[0],
                animlink: animlink[0],
                ),
              ProjectPage(
                size: size,
                title: title[1],
                content: content[1],
                ghlink: ghlink[1],
                animlink: animlink[1],
               ),
              ProjectPage(
                size: size,
                title: title[2],
                content: content[2],
                ghlink: ghlink[2],
                animlink: animlink[2],
                ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.white,
            dotColor: Colors.grey,
            dotHeight: size.width * 0.008,
            dotWidth: size.width * 0.008,
          ),
        ),
        SizedBox(
          height: size.height * 0.15,
        ),
      ],
    );
  }
}
