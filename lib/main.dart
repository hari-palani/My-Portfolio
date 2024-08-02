import 'package:flutter/material.dart';
import 'package:myportfolio/desktop/pages/desktopmainpage.dart';
import 'package:myportfolio/mobile/pages/mobilemainpage.dart';
import 'package:myportfolio/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileBody: MobileMainPage(),
        desktopBody: DesktopMainPage(),
      ),
    );
  }
}
