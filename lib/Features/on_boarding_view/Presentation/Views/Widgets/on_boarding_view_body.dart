import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Features/on_boarding_view/Presentation/Views/Widgets/custom_card.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to\nNFT Marketplace",
              style: AppStyles.styleHeavy36(context),
            ),
            Expanded(child: SizedBox()),
            CustomCard(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}