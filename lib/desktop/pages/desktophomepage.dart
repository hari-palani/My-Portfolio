import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/components/socialmedia.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width * 0.14),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 157, 0, 255),
                            blurRadius: 150),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.purple[300],
                      radius: size.width * 0.14,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: size.width * 0.18,
                    child: Image.asset('assets/mypic.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '"Hello"',
                    style: GoogleFonts.caveat(
                      fontSize: size.width * 0.05,
                      color: Colors.white,
                      shadows: [
                        const Shadow(
                          color: Colors.white,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "I AM ",
                        style: GoogleFonts.bebasNeue(
                          fontSize: size.width * 0.05,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        "HARI PALANI",
                        style: GoogleFonts.bebasNeue(
                          fontSize: size.width * 0.05,
                          color: const Color(0xFFB336FF),
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Flutter App Developer",
                    style: GoogleFonts.bebasNeue(
                        fontSize: size.width * 0.02,
                        color: Colors.white,
                        letterSpacing: 4),
                  ),
                  const Row(
                    children: [
                      SocialMediaIcon(
                        text: "Instagram",
                        icon: FontAwesomeIcons.instagram,
                        link: "https://www.instagram.com/haripalani_hdk",
                        isMobile: false,
                      ),
                      SocialMediaIcon(
                        text: "GitHub",
                        icon: FontAwesomeIcons.github,
                        link: "https://github.com/hari-palani",
                        isMobile: false,
                      ),
                      SocialMediaIcon(
                        text: "LinkedIn",
                        icon: FontAwesomeIcons.linkedin,
                        link:
                            "https://www.linkedin.com/in/hari-palani-036206252",
                        isMobile: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: size.width * 0.145,
            child: Image.asset(
              'assets/lightbulb.png',
            ),
          ),
        ),
      ],
    );
  }
}
