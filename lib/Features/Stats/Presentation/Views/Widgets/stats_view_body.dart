import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/Widgets/tap_bar_list_view.dart';


class StatsViewBody extends StatelessWidget {
  const StatsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 18),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: TabBarListView(),
        ),
      ],
    );
  }
}

