import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Data/Models/top_seller_model.dart';

class CustomTopSellerItem extends StatelessWidget {
  const CustomTopSellerItem({super.key, required this.items});
  final TopSellerModel items;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 157.66 / 236.04,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: Color(0xffffffff).withOpacity(0.20),
        ),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text(items.title, style: AppStyles.styleBold20(context)),
            ),
            SizedBox(height: 6),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                items.subTitle,
                style: AppStyles.styleRegular14(context),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.earbuds, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      items.count,
                      style: AppStyles.styleSemiBold16(
                        context,
                      ).copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.favorite_outline, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      items.rating,
                      style: AppStyles.styleSemiBold16(
                        context,
                      ).copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
