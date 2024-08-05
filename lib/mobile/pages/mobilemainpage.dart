import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/components/socialmedia.dart';

class MobileMainPage extends StatelessWidget {
  const MobileMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: size.width * 0.1,
        backgroundColor: Colors.black,
        elevation: 8,
        shadowColor: const Color(0xFFB336FF),
        surfaceTintColor: const Color(0xFFB336FF),
        centerTitle: true,
        title: Text(
          "WELCOME!",
          style: GoogleFonts.bebasNeue(
            color: const Color(0xFFB336FF),
            fontSize: size.width * 0.07,
            letterSpacing: 2,
          ),
        ),
      ),
      body: ListView(
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
                        color: Color.fromARGB(255, 157, 0, 255),
                        blurRadius: 150),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "EDUCATION",
                style: GoogleFonts.bebasNeue(
                  fontSize: size.width * 0.15,
                  color: Colors.white,
                  shadows: [
                    const Shadow(
                      color: Colors.white,
                      blurRadius: 40,
                    ),
                  ],
                  letterSpacing: 4,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SSLC & HSC :  ",
                    style: GoogleFonts.bebasNeue(
                      fontSize: size.width * 0.06,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Virutcham International\nPublic School",
                    style: GoogleFonts.bebasNeue(
                      fontSize: size.width * 0.08,
                      color: const Color(0xFFB336FF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "     UG :          ",
                    style: GoogleFonts.bebasNeue(
                      fontSize: size.width * 0.06,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "BE. Mechatronics\nThiagarajar College Of\nEngineering",
                    style: GoogleFonts.bebasNeue(
                      fontSize: size.width * 0.08,
                      color: const Color(0xFFB336FF),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            indent: 100,
            endIndent: 100,
            height: size.height * 0.1,
            thickness: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ABOUT ME",
                style: GoogleFonts.bebasNeue(
                  fontSize: size.width * 0.15,
                  color: Colors.white,
                  shadows: [
                    const Shadow(
                      color: Colors.white,
                      blurRadius: 40,
                    ),
                  ],
                  letterSpacing: 4,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SizedBox(
                width: size.width * 0.8,
                child: Text(
                  "A passionate Flutter Developer with a knack for creating elegant and efficient cross platform applications.\n\nMy journey in tech began with a fascination for solving complex problems and designing intuitive interfaces. Over the years, I’ve honed my skills in Flutter, Dart, and various other technologies to deliver robust solutions that align with the latest trends and best practices.\n\nWhen I’m not coding, you’ll find me exploring the latest tech innovations, open-source projects, or enjoying a good song.\n\nFeel free to connect with me to discuss potential projects, collaborations, or just to chat about all things tech!",
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  style: GoogleFonts.notoSansHanunoo(
                    fontSize: size.width * 0.04,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
