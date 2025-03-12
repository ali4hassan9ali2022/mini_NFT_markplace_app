import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_router.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Core/widgets/custom_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 306 / 191,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: EdgeInsets.only(top: 32, left: 24, right: 24),
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Explore and Mint NFTs",
                  style: AppStyles.styleBold20(context),
                ),
                const SizedBox(height: 6),
                Text(
                  textAlign: TextAlign.center,
                  "You can buy and sell the NFTs of the best\n artists in the world.",
                  style: AppStyles.styleRegular10(context),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kCustomPageViewView);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
