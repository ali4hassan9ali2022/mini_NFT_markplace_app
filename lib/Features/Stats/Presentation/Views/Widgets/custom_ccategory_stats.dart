import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';

class CustomCategoryStats extends StatelessWidget {
  const CustomCategoryStats({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.indigo.withOpacity(0.2),
        border: Border.all(color: Colors.indigo.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          Text(
            text,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: Colors.white),
          ),
          Icon(Icons.arrow_drop_down_sharp, color: Colors.white),
        ],
      ),
    );
  }
}
