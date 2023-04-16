import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.desktopBody});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < mobileWidth) {
            return mobileBody;
          } else {
            return desktopBody;
          }
        },
      ),
    );
  }
}
