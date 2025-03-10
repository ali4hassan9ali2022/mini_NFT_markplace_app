import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_app/Core/utils/assets.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Data/Models/category_model.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_category.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});
  static const items = [
    CategoryModel(image: Assets.imagesImage2, text: ""),
    CategoryModel(image: Assets.imagesImage1, text: "Art"),
    CategoryModel(image: Assets.imagesImage3, text: "Virtual worlds"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 9),
            child: CustomCategory(category: items[index]),
          );
        },
      ),
    );
  }
}
