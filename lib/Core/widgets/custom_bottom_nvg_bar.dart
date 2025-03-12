import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.onPressedHome,
    required this.onPressedStats,
  });
  final Function() onPressedHome;
  final Function() onPressedStats;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
            child: Container(
              height: 90,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: onPressedHome,
                    icon: Icon(Icons.home, size: 39, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: onPressedStats,
                    icon: Icon(
                      Icons.stacked_bar_chart,
                      size: 39,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 39),
                  Icon(Icons.search, size: 39, color: Colors.white),
                  Icon(Icons.person, size: 39, color: Colors.white),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -35,
          child: Container(
            decoration: ShapeDecoration(
              shape: StarBorder.polygon(sides: 6, pointRounding: 0.5),
              color: Colors.white.withOpacity(0.5),
            ),
            height: 70,
            width: 70,
            child: Icon(Icons.add, color: Colors.white, size: 27),
          ),
        ),
      ],
    );
  }
}
