


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_router.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

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
                  Icon(Icons.home, size: 39, color: Colors.white),
                  IconButton(onPressed: (){
                    GoRouter.of(context).push(AppRouter.kStatsView);
                  }, icon: Icon(Icons.stacked_bar_chart, size: 39, color: Colors.white),),
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
