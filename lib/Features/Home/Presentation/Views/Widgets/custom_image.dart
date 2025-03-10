import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Core/utils/assets.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.29,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              image: DecorationImage(
                image: AssetImage(Assets.imagesImage1),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: 170,
          bottom: 9.14,
          child: Text("Art", style: AppStyles.styleBold20(context)),
        ),
      ],
    );
  }
}
