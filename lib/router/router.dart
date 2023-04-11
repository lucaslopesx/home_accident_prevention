import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_accident_prevention/main.dart';
import 'package:home_accident_prevention/menu/menu.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'menu',
          builder: (BuildContext context, GoRouterState state) {
            return const MenuOptionsScreen();
          },
        ),
      ],
    ),
  ],
);
