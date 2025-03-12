import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Data/Models/tap_bar_model.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/Widgets/custom_tap_bar.dart';

class TabBarListView extends StatefulWidget {
  const TabBarListView({super.key});

  @override
  State<TabBarListView> createState() => _TabBarListViewState();
}

class _TabBarListViewState extends State<TabBarListView> {
  final List<TapBarModel> items = const [
    TapBarModel(text: "Ranking", icons: Icons.stacked_bar_chart),
    TapBarModel(text: "Activity", icons: Icons.bar_chart),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            if (index == 1) {
              return GestureDetector(
                onTap: () => ubdateIndex(index),
                child: CustomTapBar(
                  isActive: selectedIndex == index,
                  items: item,
                ),
              );
            } else {
              return GestureDetector(
                onTap: () => ubdateIndex(index),
                child: CustomTapBar(
                  isActive: selectedIndex == index,
                  items: item,
                ),
              );
            }
          }).toList(),
    );
  }

  void ubdateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
