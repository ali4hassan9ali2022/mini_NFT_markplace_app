import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/assets.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Data/Models/table_model.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/Widgets/custom_table_stats_item.dart';

class CustomTableListView extends StatelessWidget {
  const CustomTableListView({super.key});
  static const items = [
    TableModel(
      image: Assets.table1,
      title: "Azumi",
      subTitle: "view info",
      count: "200055.02",
      rating: "3,99%",
    ),
    TableModel(
      image: Assets.table2,
      title: "Hape prime",
      subTitle: "view info",
      count: "180055.45",
      rating: "33,79%",
    ),
    TableModel(
      image: Assets.table3,
      title: "Cryoto",
      subTitle: "view info",
      count: "90055.62",
      rating: "-6,56%",
    ),
    TableModel(
      image: Assets.table4,
      title: "Ape Club",
      subTitle: "view info",
      count: "88055.12",
      rating: "3,99%",
    ),
    TableModel(
      image: Assets.table5,
      title: "Bat",
      subTitle: "view info",
      count: "10055.06",
      rating: "3,99%",
    ),
    TableModel(
      image: Assets.table6,
      title: "Mutant",
      subTitle: "view info",
      count: "9095.27",
      rating: "3,99%",
    ),
    TableModel(
      image: Assets.table1,
      title: "Azumi",
      subTitle: "view info",
      count: "200055.02",
      rating: "3,99%",
    ),
    TableModel(
      image: Assets.table2,
      title: "Hape prime",
      subTitle: "view info",
      count: "180055.45",
      rating: "33,79%",
    ),
    TableModel(
      image: Assets.table3,
      title: "Cryoto",
      subTitle: "view info",
      count: "90055.62",
      rating: "-6,56%",
    ),
    TableModel(
      image: Assets.table4,
      title: "Ape Club",
      subTitle: "view info",
      count: "88055.12",
      rating: "3,99%",
    ),
    TableModel(
      image: Assets.table5,
      title: "Bat",
      subTitle: "view info",
      count: "10055.06",
      rating: "3,99%",
    ),
    TableModel(
      image: Assets.table6,
      title: "Mutant",
      subTitle: "view info",
      count: "9095.27",
      rating: "3,99%",
    ),
  ];
  static int index = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 28.15, horizontal: 14.41),
      decoration: BoxDecoration(
        color: Color(0xff5c6098).withOpacity(0.45),
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomTableStatsItem(
              items: items[index],
              i: index = index + 1,
            ),
          );
        },
      ),
    );
  }
}
