import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 8,
        shadowColor: const Color(0xFFB336FF),
        surfaceTintColor: const Color(0xFFB336FF),
        centerTitle: true,
        leading: Text(
          "  HARI PALANI",
          style: GoogleFonts.bebasNeue(
            color: const Color(0xFFB336FF),
            fontSize: size.height * 0.05,
            letterSpacing: 8,
          ),
        ),
        leadingWidth: size.width * 0.4,
        title: Text(
          "WELCOME!",
          style: GoogleFonts.bebasNeue(
            color: const Color(0xFFB336FF),
            fontSize: size.height * 0.05,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.1),
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
                padding: EdgeInsets.fromLTRB(
                    0, size.height * 0.2, size.width * 0.1, 0),
                child: Column(
                  children: [
                    Text(
                      '"Hello"',
                      style: GoogleFonts.caveat(
                        fontSize: size.height * 0.1,
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
                            fontSize: size.height * 0.1,
                            color: Colors.white,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          "HARI PALANI",
                          style: GoogleFonts.bebasNeue(
                            fontSize: size.height * 0.1,
                            color: const Color(0xFFB336FF),
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Flutter App Developer",
                      style: GoogleFonts.bebasNeue(
                          fontSize: size.height * 0.05,
                          color: Colors.white,
                          letterSpacing: 4),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => launchURL(
                              "https://www.instagram.com/haripalani_hdk"),
                          child: Image.asset("assets/instagram.png"),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        GestureDetector(
                          onTap: () => launchURL(
                              "https://www.linkedin.com/in/hari-palani-036206252"),
                          child: Image.asset("assets/linkedin.png"),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        GestureDetector(
                          onTap: () =>
                              launchURL("https://github.com/hari-palani"),
                          child: Image.asset("assets/github.png"),
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
            child: Image.asset('assets/lightbulb.png'),
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
