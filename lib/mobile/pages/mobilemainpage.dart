import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  fontSize: size.width * 0.14,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              Text(
                "HARI PALANI",
                style: GoogleFonts.bebasNeue(
                  fontSize: size.width * 0.14,
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
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () =>
                    launchURL("https://www.instagram.com/haripalani_hdk"),
                child: Image.asset("assets/instagram.png"),
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              GestureDetector(
                onTap: () => launchURL(
                    "https://www.linkedin.com/in/hari-palani-036206252"),
                child: Image.asset("assets/linkedin.png"),
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              GestureDetector(
                onTap: () => launchURL("https://github.com/hari-palani"),
                child: Image.asset("assets/github.png"),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
        ],
      ),
    );
  }
}

launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
