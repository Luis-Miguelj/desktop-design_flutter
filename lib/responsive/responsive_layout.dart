import 'package:desktop_app/responsive/dimensions.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget portraitMobile;

  ResponsiveLayout(
      {required this.mobileBody,
      required this.desktopBody,
      required this.portraitMobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileBody;
      } else if (constraints.maxWidth > mobileWidth &&
          constraints.maxWidth < mobilePortraitWidth) {
        return portraitMobile;
      } else {
        return desktopBody;
      }
    });
  }
}
