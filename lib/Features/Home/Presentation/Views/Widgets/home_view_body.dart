import 'package:flutter/material.dart';

import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_image_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [CustomImageListView()]));
  }
}
