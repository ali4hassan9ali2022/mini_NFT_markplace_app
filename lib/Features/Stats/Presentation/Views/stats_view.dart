import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_styles.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/Widgets/stats_view_body.dart';
import 'package:mini_nft_marketplace_app/constents.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(Icons.more_horiz),
          ),
        ],
        title: Text("Stats", style: AppStyles.styleBold26(context)),
      ),
      backgroundColor: kprimaryColor,
      body: StatsViewBody(),
    );
  }
}
