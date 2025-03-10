import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_category_list_view.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_sub_title.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_top_seller_list_view.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_trending_collection_list_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          SizedBox(height: 27),
          CustomCategoryListView(),
          SizedBox(height: 27),
          CustomSubTitle(title: "Trending collections"),
          SizedBox(height: 8),
          CustomTrendingCollectionListView(),
          SizedBox(height: 27),
          CustomSubTitle(title: "Top seller"),
          SizedBox(height: 8),
          CustomTopSellerListView(),
        ],
      ),
    );
  }
}
