import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/Widgets/custom_image.dart';

class CustomImageListView extends StatelessWidget {
  const CustomImageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 9),
            child: CustomImage(),
          );
        },
      ),
    );
  }
}
