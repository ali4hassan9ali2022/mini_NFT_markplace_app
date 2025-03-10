import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';

import 'package:mini_nft_marketplace_app/Features/Home/Data/Models/category_model.dart';

class CustomTrendingCollectionsItem extends StatelessWidget {
  const CustomTrendingCollectionsItem({super.key, required this.items});
  final CategoryModel items;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 157.66 / 194.89,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: Color(0xffffffff).withOpacity(0.20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 139.64 / 139.64,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    image: DecorationImage(
                      image: AssetImage(items.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(items.text, style: AppStyles.styleSemiBold1(context)),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red, size: 14),
                      SizedBox(width: 8),
                      Text(
                        "200",
                        style: AppStyles.styleRegular10(
                          context,
                        ).copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
