import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/components/mprojectlist.dart';
import 'package:url_launcher/url_launcher.dart';

class MProjectPage extends StatelessWidget {
  const MProjectPage({
    super.key,
    required this.size,
    required this.title,
    required this.ghlink,
    required this.image,
  });

  final Size size;
  final String title;
  final String ghlink;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size.width * 0.04),
      child: Container(
        color: Colors.purple[400],
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Image.asset(image,height: size.height*0.2,),
              SizedBox(
                height: size.height * 0.02,
              ),
              TextButton(
                onPressed: () => launchURL(ghlink),
                child: Text(
                  title,
                  style: GoogleFonts.bebasNeue(
                    fontSize: size.width * 0.1,
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
            ],
          ),
        ),
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
