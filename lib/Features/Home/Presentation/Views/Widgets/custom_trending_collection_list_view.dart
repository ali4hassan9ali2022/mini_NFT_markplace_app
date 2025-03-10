import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/assets.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Data/Models/category_model.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_trending_collection.dart';

class CustomTrendingCollectionListView extends StatelessWidget {
  const CustomTrendingCollectionListView({super.key});
  static const items = [
    CategoryModel(image: Assets.imagesTrending1, text: "3D Art"),
    CategoryModel(image: Assets.imagesTrending2, text: "Abstract Art"),
    CategoryModel(image: Assets.imagesTrending3, text: "Portrait Art"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomTrendingCollectionsItem(items: items[index]),
          );
        },
      ),
    );
  }
}
