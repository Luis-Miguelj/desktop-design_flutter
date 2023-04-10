import 'package:desktop_app/desktop/pages/login_desktop.dart';
import 'package:desktop_app/responsive/login/desktop_login.dart';
import 'package:desktop_app/responsive/login/mobile_login.dart';
import 'package:desktop_app/responsive/login/portrait_login.dart';
import 'package:desktop_app/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../mobile/pages/login_mobile.dart';

class Login extends StatefulWidget {
  static const route = 'login';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: MobileLogin(),
          desktopBody: DesktopLogin(),
          portraitMobile: PortraitLogin()),
    );
  }
}
