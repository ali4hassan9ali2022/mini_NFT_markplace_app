import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/Widgets/custom_table_stats_item.dart';

class CustomTableListView extends StatelessWidget {
  const CustomTableListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 28.15, horizontal: 14.41),
      decoration: BoxDecoration(
        color: Color(0xff5c6098).withOpacity(0.45),
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomTableStatsItem(),
          );
        },
      ),
    );
  }
}
