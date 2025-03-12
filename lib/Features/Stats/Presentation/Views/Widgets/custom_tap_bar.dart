import 'package:flutter/material.dart';

import 'package:mini_nft_marketplace_app/Features/Stats/Data/Models/tap_bar_model.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/Widgets/active_and_inactive_tap_bar.dart';

class CustomTapBar extends StatelessWidget {
  const CustomTapBar({super.key, required this.isActive, required this.items});
  final bool isActive;
  final TapBarModel items;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        isActive
            ? ActiveCustomTapBarItem(items: items)
            : InActiveCustomTapBarItem(items: items),
      ],
    );
  }
}
