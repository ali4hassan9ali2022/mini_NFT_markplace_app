import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';

import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_category_list_view.dart';

import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_trending_collection_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCategoryListView(),
          SizedBox(height: 27),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Trending collections",
              style: AppStyles.styleSemiBold18(context),
            ),
          ),
          SizedBox(height: 8),
          CustomTrendingCollectionListView(),
        ],
      ),
    );
  }
}
