import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(175, 45),
        backgroundColor: Color(0xff97A9F6).withOpacity(0.5),
      ),
      onPressed: () {},
      child: Text("Get started now", style: AppStyles.styleSemiBold16(context)),
    );
  }
}
