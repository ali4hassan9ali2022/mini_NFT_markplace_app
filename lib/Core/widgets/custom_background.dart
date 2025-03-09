import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/assets.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesOnBoardingBackground),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.64, -0.76),
          end: Alignment(-0.64, 0.73),
          colors: [Color(0xff5c6098), Color(0xff767cb2)],
        ),
      ),
      child: child,
    );
  }
}


// 0.64, -0.76
// -064, 0.76