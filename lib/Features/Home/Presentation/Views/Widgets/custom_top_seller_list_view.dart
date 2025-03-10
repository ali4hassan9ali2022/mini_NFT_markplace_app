import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/assets.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Data/Models/top_seller_model.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_top_seller_item.dart';

class CustomTopSellerListView extends StatelessWidget {
  const CustomTopSellerListView({super.key});
  static const items = [
    TopSellerModel(
      image: Assets.imagesTopSeller1,
      title: "Abstrack Pink",
      subTitle: "abstrack #2538",
      count: "0.906",
      rating: "200",
    ),
    TopSellerModel(
      image: Assets.imagesTopSeller2,
      title: "Abstrack Pink2",
      subTitle: "abstrack #2538",
      count: "0.906",
      rating: "5160",
    ),
    TopSellerModel(
      image: Assets.imagesTopSeller3,
      title: "Wave",
      subTitle: "Wavepi #5267",
      count: "0.26",
      rating: "200",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 18),
            child: CustomTopSellerItem(
              items: items[index],
            ),
          );
        },
      ),
    );
  }
}
