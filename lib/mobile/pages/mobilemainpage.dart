import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/mobile/pages/mobileaboutpage.dart';
import 'package:myportfolio/mobile/pages/mobileeducationpage.dart';
import 'package:myportfolio/mobile/pages/mobilehomepage.dart';
import 'package:myportfolio/mobile/pages/mobileprojectpage.dart';

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
        children: const [
          MobileHomePage(),
          MobileEducationPage(),
          MobileAboutPage(),
          MobileProjectPage(),
        ],
      ),
    );
  }
}
