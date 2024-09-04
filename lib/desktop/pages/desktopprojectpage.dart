import "package:flutter/material.dart";
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
                title: "Tic Tac Toe",
                content:
                    "Dive into a unique twist on the classic Tic Tac Toe game where both players make their moves simultaneously! Challenge a friend, strategize in real-time, and see who can claim victory first. Simple, fun, and exciting gameplay that will keep you on your toes!",
                ghlink: "https://github.com/hari-palani/Tic_Tac_Toe",
                animlink:
                    "https://lottie.host/9d1f2ca4-dd01-4ea3-aeac-1f41bc36151c/mMAaHSk4nJ.json",
              ),
              ProjectPage(
                size: size,
                title: "DB App",
                content:
                    "Efficiently manage and store employee data with this easy-to-use database app! Designed for courier services, employees can quickly enter the details, including consignment number, tracking id, and delivery records, directly into a MySQL database. Streamline operations and keep all essential data secure and organized in one place.",
                ghlink: "https://github.com/hari-palani/DB-App",
                animlink:
                    "https://lottie.host/d324f510-8619-41e7-b9f3-1f36e21a67cc/LNKmgHpZHq.json",
              ),
              ProjectPage(
                size: size,
                title: "Daimler trucks",
                content:
                    "Simplify your event planning with our all-in-one booking solution tailored for Daimler Trucks! Easily reserve conference halls and catering services for meetings, workshops, and special events. Manage schedules, choose catering options, and ensure a seamless experience for every gathering—all in one convenient app.",
                ghlink: "https://github.com/hari-palani/Daimler-Truck",
                animlink:
                    "https://lottie.host/c8288b87-e28b-4c5e-9b1c-c2e4d1b168da/HufNXuK0JS.json",
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
