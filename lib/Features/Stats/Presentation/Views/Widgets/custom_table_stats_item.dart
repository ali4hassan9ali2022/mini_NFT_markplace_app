import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Data/Models/table_model.dart';

class CustomTableStatsItem extends StatelessWidget {
  const CustomTableStatsItem({super.key, required this.items, required this.i});
  final TableModel items;
  final int i;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(i.toString(), style: AppStyles.styleRegular14(context)),
        SizedBox(width: 9),
        Image.asset(items.image, height: 40, fit: BoxFit.fill),
        SizedBox(width: 13.51),
        Column(
          children: [
            Text(items.title, style: AppStyles.styleSemiBold16(context)),
            Text(
              items.subTitle,
              style: AppStyles.styleRegular10(
                context,
              ).copyWith(fontSize: 12, color: Colors.white.withOpacity(0.6)),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
        Column(
          children: [
            Text(items.count, style: AppStyles.styleSemiBold16(context)),
            Text(
              items.rating,
              style: AppStyles.styleRegular10(
                context,
              ).copyWith(fontSize: 12, color: Color(0xff34C759)),
            ),
          ],
        ),
      ],
    );
  }
}
