import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/Widgets/custom_ccategory_stats.dart';
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
        Divider(
          thickness: 1.3,
          height: 1,
          color: Color(0xffffffff).withOpacity(0.1),
        ),
        SizedBox(height: 27),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.1),
          child: Row(
            children: [
              Expanded(
                child: CustomCategoryStats(
                  icon: Icons.list_outlined,
                  text: "All categories",
                ),
              ),
              SizedBox(width: 25.23),
              Expanded(
                child: CustomCategoryStats(
                  icon: Icons.abc_outlined,
                  text: "All Chains",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
