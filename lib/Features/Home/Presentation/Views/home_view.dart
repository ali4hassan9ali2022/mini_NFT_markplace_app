import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff211134),
        centerTitle: true,
        title: Text("NFT Marketplace", style: AppStyles.styleBold26(context)),
      ),
      backgroundColor: Color(0xff211134),
      body: HomeViewBody(),
    );
  }
}
