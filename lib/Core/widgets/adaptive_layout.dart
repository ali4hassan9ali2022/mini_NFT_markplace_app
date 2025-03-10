import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.modileLayOut,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder modileLayOut, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, covariant) {
        if (covariant.maxWidth < 600) {
          return modileLayOut(context);
        } else if (covariant.maxWidth < 900) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}