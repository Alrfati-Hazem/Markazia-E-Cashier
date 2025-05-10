import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {}
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.custom(
    duration: const Duration(milliseconds: 150),
    transitionsBuilder: TransitionsBuilders.fadeIn,
  );

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ChooseBranchRoute.page, initial: true),
    AutoRoute(page: ChooseLanguageRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: BranchServicesRoute.page),
  ];
}
