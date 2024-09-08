import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/components/socialmedia.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: EdgeInsets.only(top: size.height * 0.1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * 0.14),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 157, 0, 255), blurRadius: 150),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.purple[300],
                radius: size.width * 0.30,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: size.width * 0.38,
              child: Image.asset('assets/mypic.png'),
            ),
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: size.width * 0.2,
                child: Image.asset(
                  'assets/lightbulb.png',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.05),
        Center(
          child: Text(
            '"Hello"',
            style: GoogleFonts.caveat(
              fontSize: size.width * 0.16,
              color: Colors.white,
              shadows: [
                const Shadow(
                  color: Colors.white,
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I AM ",
              style: GoogleFonts.bebasNeue(
                fontSize: size.width * 0.1,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            Text(
              "HARI PALANI",
              style: GoogleFonts.bebasNeue(
                fontSize: size.width * 0.1,
                color: const Color(0xFFB336FF),
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        Center(
          child: Text(
            "Flutter App Developer",
            style: GoogleFonts.bebasNeue(
                fontSize: size.width * 0.07,
                color: Colors.white,
                letterSpacing: 4),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialMediaIcon(
              text: "Instagram",
              icon: FontAwesomeIcons.instagram,
              link: "https://www.instagram.com/haripalani_hdk",
              isMobile: true,
            ),
            //SizedBox(width: size.width * 0.1),
            SocialMediaIcon(
              text: "GitHub",
              icon: FontAwesomeIcons.github,
              link: "https://github.com/hari-palani",
              isMobile: true,
            ),
            //SizedBox(width: size.width * 0.1),
            SocialMediaIcon(
              text: "LinkedIn",
              icon: FontAwesomeIcons.linkedin,
              link: "https://www.linkedin.com/in/hari-palani-036206252",
              isMobile: true,
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        const Divider(
          //height: size.height * 0.1,
          thickness: 1,
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
      ],
    );
  }
}
