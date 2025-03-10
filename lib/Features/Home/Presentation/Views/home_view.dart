import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Core/widgets/adaptive_layout.dart';
import 'package:mini_nft_marketplace_app/Core/widgets/custom_bottom_nvg_bar.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavBar(),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("NFT Marketplace", style: AppStyles.styleBold26(context)),
      ),
      backgroundColor: Color(0xff211134),
      body: AdaptiveLayout(
        modileLayOut: (context) => MobileLayout(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => SizedBox(),
      ),
    );
  }
}
