import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/home_view_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}