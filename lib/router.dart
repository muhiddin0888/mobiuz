import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobi_uz/core/route_constants.dart';
import 'package:mobi_uz/screens/beeline/beeline_page.dart';
import 'package:mobi_uz/screens/home_page.dart';
import 'package:mobi_uz/screens/mobiuz/mobiuz_page.dart';
import 'package:mobi_uz/screens/ucell/ucell_page.dart';
import 'package:mobi_uz/screens/uzmobile/uzmobile_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.homePage,
        path: RouteConstants.homePage,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomePage());
        },
      ),
      GoRoute(
        name: RouteConstants.mobiuzPage,
        path: RouteConstants.mobiuzPage,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MobiUzPage());
        },
      ),
      GoRoute(
        name: RouteConstants.ucellPage,
        path: RouteConstants.ucellPage,
        pageBuilder: (context, state) {
          return const MaterialPage(child: UcellPage());
        },
      ),
      GoRoute(
        name: RouteConstants.beelinePage,
        path: RouteConstants.beelinePage,
        pageBuilder: (context, state) {
          return const MaterialPage(child: BeelinePage());
        },
      ),
      GoRoute(
        name: RouteConstants.uzmobilePage,
        path: RouteConstants.uzmobilePage,
        pageBuilder: (context, state) {
          return const MaterialPage(child: UzmobilePage());
        },
      ),
    ],
  );
}
