import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_app/ui/screens/Newscreen/NewScreen.dart';

import '../ui/screens/homeScreen/HomeScreen.dart';
import 'constants.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouterConstant.rootScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: RouterConstant.newScreen.substring(1),
          builder: (BuildContext context, GoRouterState state) {
            return const NewScreen();
          },
        ),
      ],
    ),
  ],
);
