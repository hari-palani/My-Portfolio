import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileEducationPage extends StatelessWidget {
  const MobileEducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
              Divider(
                indent: 100,
                endIndent: 100,
                height: size.height * 0.1,
                thickness: 1,
              ),
            ],
          );
  }
}