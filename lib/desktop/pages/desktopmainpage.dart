import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/desktop/pages/desktopaboutpage.dart';
import 'package:myportfolio/desktop/pages/desktophomepage.dart';
import 'package:myportfolio/desktop/pages/desktopprojectpage.dart';

class DesktopMainPage extends StatelessWidget {
  const DesktopMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: size.width * 0.05,
        backgroundColor: Colors.black,
        elevation: 8,
        shadowColor: const Color(0xFFB336FF),
        surfaceTintColor: const Color(0xFFB336FF),
        centerTitle: true,
        leading: Center(
          child: Text(
            "HARI PALANI",
            style: GoogleFonts.bebasNeue(
              color: const Color(0xFFB336FF),
              fontSize: size.width * 0.03,
              letterSpacing: 8,
            ),
          ),
        ),
        leadingWidth: size.width * 0.4,
        title: Text(
          "WELCOME!",
          style: GoogleFonts.bebasNeue(
            color: const Color(0xFFB336FF),
            fontSize: size.width * 0.03,
            letterSpacing: 2,
          ),
        ),
      ),
      body: ListWheelScrollView(
        itemExtent: size.height,
        physics: const FixedExtentScrollPhysics(),
        children: [
          const DesktopHomePage(),
          const DesktopAboutPage(),
          DesktopProjectPage(),
        ],
      ),
    );
  }
}
