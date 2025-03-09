import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/app_router.dart';

void main() {
  runApp(const MiniNTFMarketplaceApp());
}

class MiniNTFMarketplaceApp extends StatelessWidget {
  const MiniNTFMarketplaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}

// Color(0xff5c6098)
// Color(0xff767cb2)
