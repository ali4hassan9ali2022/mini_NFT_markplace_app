import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Data/Models/category_model.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.35,
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(category.text, style: AppStyles.styleBold20(context)),
        ),
      ),
    );

    // Stack(
    //   children: [
    //     AspectRatio(
    //       aspectRatio: 1.3,
    //       child: Container(
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(27),
    //           image: DecorationImage(
    //             image: AssetImage(category.image),
    //             fit: BoxFit.fill,
    //           ),
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //       left: 170,
    //       bottom: 9.14,
    //       child: Text(category.text, style: AppStyles.styleBold20(context)),
    //     ),
    //   ],
    // );
  }
}
