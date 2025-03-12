import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/widgets/custom_bottom_nvg_bar.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/stats_view.dart';
import 'package:mini_nft_marketplace_app/constents.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  int index = 0;
  List<Widget> pages = [HomeView(), StatsView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: kprimaryColor,
      bottomNavigationBar: CustomBottomNavBar(
        onPressedHome: () {
          index = 0;
          setState(() {});
        },
        onPressedStats: () {
          index = 1;
          setState(() {});
        },
      ),
      body: pages[index],
    );
  }
}
