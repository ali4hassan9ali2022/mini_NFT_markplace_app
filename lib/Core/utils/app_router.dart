import 'package:go_router/go_router.dart';
import 'package:mini_nft_marketplace_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:mini_nft_marketplace_app/Features/Stats/Presentation/Views/stats_view.dart';
import 'package:mini_nft_marketplace_app/Features/on_boarding_view/Presentation/Views/on_boarding_view.dart';

abstract class AppRouter {
  static const kHomeView = "/HomeView";
  static const kStatsView = "/StatsView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => OnBoardingView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(path: kStatsView, builder: (context, state) => StatsView()),
    ],
  );
}
