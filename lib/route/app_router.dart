import 'package:auto_route/auto_route.dart';
import 'package:demo/page/home_page.dart';
import 'package:demo/page/widgets/page_1.dart';
import 'package:demo/page/widgets/page_2.dart';
import 'package:demo/page/widgets/page_3.dart';

import 'package:riverpod/riverpod.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter(Ref ref);
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'first', page: FirstRoute.page),
            AutoRoute(path: 'second', page: SecondRoute.page),
            AutoRoute(path: 'third', page: ThirdRoute.page),
          ],
        ),
      ];
}

final appRouterProvider = Provider(AppRouter.new);
