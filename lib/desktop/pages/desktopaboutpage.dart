import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopAboutPage extends StatelessWidget {
  const DesktopAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "EDUCATION",
                style: GoogleFonts.bebasNeue(
                  fontSize: size.width * 0.05,
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
              SizedBox(height: size.height * 0.09),
              Row(
                children: [
                  Text(
                    "SSLC & HSC :  ",
                    style: GoogleFonts.bebasNeue(
                      fontSize: size.width * 0.03,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Virutcham International\nPublic School",
                    style: GoogleFonts.bebasNeue(
                      fontSize: size.width * 0.03,
                      color: const Color(0xFFB336FF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.1),
              Row(
                children: [
                  Text(
                    "  UG :           ",
                    style: GoogleFonts.bebasNeue(
                      fontSize: size.width * 0.03,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "BE. Mechatronics\nThiagarajar College Of\nEngineering",
                    style: GoogleFonts.bebasNeue(
                      fontSize: size.width * 0.03,
                      color: const Color(0xFFB336FF),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.05),
                child: Text(
                  "ABOUT ME",
                  style: GoogleFonts.bebasNeue(
                    fontSize: size.width * 0.05,
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
              ),
              SizedBox(
                width: size.width * 0.4,
                child: Text(
                  "A passionate Flutter Developer with a knack for creating elegant and efficient cross platform applications.\n\nMy journey in tech began with a fascination for solving complex problems and designing intuitive interfaces. Over the years, I’ve honed my skills in Flutter, Dart, and various other technologies to deliver robust solutions that align with the latest trends and best practices.\n\nWhen I’m not coding, you’ll find me exploring the latest tech innovations, open-source projects, or enjoying a good song.\n\nFeel free to connect with me to discuss potential projects, collaborations, or just to chat about all things tech!",
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  style: GoogleFonts.notoSansHanunoo(
                    fontSize: size.width * 0.013,
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
