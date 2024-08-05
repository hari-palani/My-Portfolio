import 'dart:math';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatefulWidget {
  final String text;
  final IconData icon;
  final String link;
  final bool isMobile;

  const SocialMediaIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.link,
    required this.isMobile,
  });

  @override
  State<SocialMediaIcon> createState() => _SocialMediaIconState();
}

class _SocialMediaIconState extends State<SocialMediaIcon> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.15,
      width: widget.isMobile ? size.height * 0.1 : size.width * 0.06,
      child: Stack(
        children: [
          //For Social Media Text after hove on
          AnimatedOpacity(
            opacity: isHover ? 1 : 0,
            duration: const Duration(milliseconds: 100),
            child: AnimatedAlign(
              alignment: isHover
                  ? const Alignment(0, -0.6)
                  : const Alignment(
                      0, 0), //direction in which name will display
              duration: const Duration(milliseconds: 200),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //For arrow to show social media name
                  Positioned(
                    left: widget.isMobile
                        ? size.height * 0.038
                        : size.width * 0.023,
                    top: size.height * 0.04,
                    child: Transform(
                      transform: Matrix4.rotationZ(pi / 4),
                      alignment: FractionalOffset.center,
                      child: Container(
                        height: size.height * 0.01,
                        width: widget.isMobile
                            ? size.height * 0.018
                            : size.width * 0.0085,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.048,
                    width:
                        widget.isMobile ? size.height * 0.6 : size.width * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widget.isMobile
                          ? size.height * 0.1
                          : size.width * 0.01),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        widget.text,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: widget.isMobile
                              ? size.height * 0.018
                              : size.width * 0.01,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //For Social Media Icon
          Align(
            alignment: Alignment.bottomCenter,
            child: MouseRegion(
              onEnter: (event) => setState(() {
                isHover = true;
              }),
              onExit: (event) => setState(() {
                isHover = false;
              }),
              child: GestureDetector(
                onTap: () => launchURL(widget.link),
                //child: AnimatedContainer(
                // height: size.width * 0.05,
                // width: size.width * 0.05,
                // duration: const Duration(milliseconds: 300),
                // decoration: BoxDecoration(
                //   color: isHover ? widget.color : Colors.white,
                //   borderRadius: BorderRadius.circular(size.height * 0.05),
                // ),
                child: Icon(
                  widget.icon,
                  size:
                      widget.isMobile ? size.height * 0.06 : size.width * 0.03,
                  color: isHover ? Colors.white : Colors.purple,
                  //),
                ),
              ),
            ),
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
