import 'package:go_router/go_router.dart';
import 'package:mini_nft_marketplace_app/Features/on_boarding_view/Presentation/Views/on_boarding_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [GoRoute(path: "/", builder: (context, state) => OnBoardingView())],
  );
}
