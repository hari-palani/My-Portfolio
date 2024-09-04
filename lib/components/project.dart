import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:lottie/lottie.dart";
import "package:url_launcher/url_launcher.dart";

class ProjectPage extends StatelessWidget {
  const ProjectPage({
    super.key,
    required this.size,
    required this.title,
    required this.content,
    required this.ghlink,
    required this.animlink,
  });

  final Size size;
  final String title;
  final String content;
  final String ghlink;
  final String animlink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          size.width * 0.2, size.width * 0.05, size.width * 0.2, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size.width*0.02),
        child: Container(
          color: Colors.purple[400],
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.01,
                ),
                SizedBox(
                  width: size.width * 0.28,
                  child: Text(
                    content,
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.notoSansHanunoo(
                      fontSize: size.width * 0.013,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.network(animlink, height: size.width * 0.2),
                    TextButton(
                      onPressed: () => launchURL(ghlink),
                      child: Text(
                        title,
                        style: GoogleFonts.bebasNeue(
                          fontSize: size.width * 0.04,
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
                SizedBox(
                  width: size.width * 0.01,
                ),
              ],
            ),
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
