import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Data/Models/tap_bar_model.dart';

class ActiveCustomTapBarItem extends StatelessWidget {
  const ActiveCustomTapBarItem({
    super.key, required this.items,
   
  });
  final TapBarModel items;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(items.icons, size: 16, color: Colors.white),
            SizedBox(width: 6),
            Text(items.text, style: AppStyles.styleSemiBold16(context)),
          ],
        ),
        SizedBox(height: 13.51),
        Container(
          width: 106.31,
          height: 3.6,
          decoration: BoxDecoration(
            color: Color(0xff97A9F6),
            boxShadow: [
              BoxShadow(
                color: Color(0xff976dff),
                offset: Offset(0, -5),
                blurRadius: 16,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InActiveCustomTapBarItem extends StatelessWidget {
  const InActiveCustomTapBarItem({
    super.key, required this.items,
  
  });
  final TapBarModel items;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(items.icons, size: 16, color: Colors.grey),
        SizedBox(width: 6),
        Text(
          items.text,
          style: AppStyles.styleSemiBold16(
            context,
          ).copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
// 0xff976dff