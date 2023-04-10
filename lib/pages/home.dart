import 'package:desktop_app/responsive/body/home/desktopBody.dart';
import 'package:desktop_app/responsive/body/home/mobileBody.dart';
import 'package:desktop_app/responsive/body/home/portrait_body.dart';
import 'package:desktop_app/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static const route = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
      mobileBody: MyMobileBody(),
      desktopBody: MyDesktopBody(),
      portraitMobile: PortraitBody(),
    ));
  }
}
