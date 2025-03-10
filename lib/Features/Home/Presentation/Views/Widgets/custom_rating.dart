import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Data/Models/category_model.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, required this.items});

  final CategoryModel items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(items.text, style: AppStyles.styleSemiBold1(context)),
        Row(
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 14),
            SizedBox(width: 8),
            Text(
              "200",
              style: AppStyles.styleRegular10(context).copyWith(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
