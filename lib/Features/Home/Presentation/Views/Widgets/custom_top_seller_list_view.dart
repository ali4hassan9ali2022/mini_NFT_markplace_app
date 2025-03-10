import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_top_seller_item.dart';

class CustomTopSellerListView extends StatelessWidget {
  const CustomTopSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 18),
            child: CustomTopSellerItem(),
          );
        },
      ),
    );
  }
}