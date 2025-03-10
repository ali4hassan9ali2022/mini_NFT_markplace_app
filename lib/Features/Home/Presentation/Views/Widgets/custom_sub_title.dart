import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(title, style: AppStyles.styleSemiBold18(context)),
    );
  }
}