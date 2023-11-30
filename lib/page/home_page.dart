import 'package:auto_route/auto_route.dart';
import 'package:demo/route/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        FirstRoute(),
        SecondRoute(),
        ThirdRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: <Widget>[
            NavigationDestination(
              icon: const Icon(Icons.menu_book),
              label: 'beginner'.tr(),
            ),
            NavigationDestination(
              icon: const Icon(Icons.one_k),
              label: 'elementary'.tr(),
            ),
            NavigationDestination(
              icon: const Icon(Icons.translate),
              label: 'intermediate'.tr(),
            ),
          ],
        );
      },
    );
  }
}
