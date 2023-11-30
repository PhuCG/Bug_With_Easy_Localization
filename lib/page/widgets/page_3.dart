import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('c1_desc').tr(),
          const Spacer(),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Text('to vi'),
                onPressed: () {
                  context.setLocale(const Locale('vi'));
                },
              ),
              TextButton(
                child: const Text('to en'),
                onPressed: () {
                  context.setLocale(const Locale('en'));
                },
              ),
              TextButton(
                child: const Text('to ja'),
                onPressed: () {
                  context.setLocale(const Locale('ja'));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
