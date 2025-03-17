import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Core/utils/assets.dart';

class CustomTableStatsItem extends StatelessWidget {
  const CustomTableStatsItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("1", style: AppStyles.styleRegular14(context)),
        SizedBox(width: 9),
        Image.asset(Assets.imagesTrending1, height: 40, fit: BoxFit.fill),
        SizedBox(width: 13.51),
        Column(
          children: [
            Text("Azumi", style: AppStyles.styleSemiBold16(context)),
            Text(
              "view info",
              style: AppStyles.styleRegular10(
                context,
              ).copyWith(fontSize: 12, color: Colors.white.withOpacity(0.6)),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
        Column(
          children: [
            Text("200055.02", style: AppStyles.styleSemiBold16(context)),
            Text(
              "3,99%",
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
