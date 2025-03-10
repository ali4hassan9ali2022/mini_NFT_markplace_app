import 'package:flutter/material.dart';

import 'package:mini_nft_marketplace_app/Core/widgets/custom_background.dart';
import 'package:mini_nft_marketplace_app/Features/on_boarding_view/Presentation/Views/Widgets/on_boarding_view_body.dart';


class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: OnBoardingViewBody(),
      ),
    );
  }
}



