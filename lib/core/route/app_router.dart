import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';
import 'package:poketra/core/constants/index.dart';
import 'package:poketra/global/widgets/scaffold_with_nested_navigation.dart';

class AppRouter {
  //Singleton instance
  static final AppRouter _instance = AppRouter._internal();
  //Go router instance
  static late final GoRouter goRouter;
  // Getter for the singleton instance
  static AppRouter get instance => _instance;

  //Generate private key  for navigator with a label
  static GlobalKey<NavigatorState> generateKey(String label) {
    return GlobalKey<NavigatorState>(debugLabel: label);
  }

  factory AppRouter() {
    return _instance;
  }
  AppRouter._internal() {
    goRouter = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: generateKey('root'),
      initialLocation: RoutePath.onboarding,
      routes: [
        GoRoute(
            path: RoutePath.onboarding,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                  key: state.pageKey, child: const Text('Onboarding screen'));
            }),
        GoRoute(
            path: RoutePath.auth,
            redirect: (BuildContext context, GoRouterState state) {
              return RoutePath.login;
            },
            routes: [
              GoRoute(
                  path: RoutePath.login,
                  pageBuilder: (BuildContext context, GoRouterState state) {
                    return MaterialPage(
                        key: state.pageKey, child: const Text('Login screen'));
                  }),
              GoRoute(
                  path: RoutePath.signup,
                  pageBuilder: (BuildContext context, GoRouterState state) {
                    return MaterialPage(
                        key: state.pageKey, child: const Text('SignUp screen'));
                  })
            ]),
        StatefulShellRoute.indexedStack(
          branches: [
            StatefulShellBranch(navigatorKey: generateKey('home'), routes: [
              GoRoute(
                  path: RoutePath.home,
                  pageBuilder: (BuildContext context, GoRouterState state) {
                    return MaterialPage(
                        key: state.pageKey, child: const Text('home screen'));
                  })
            ]),
            StatefulShellBranch(
                navigatorKey: generateKey('statistics'),
                routes: [
                  GoRoute(
                      path: RoutePath.statistics,
                      pageBuilder: (BuildContext context, GoRouterState state) {
                        return MaterialPage(
                            key: state.pageKey,
                            child: const Text('stats screen'));
                      })
                ]),
            StatefulShellBranch(navigatorKey: generateKey('goals'), routes: [
              GoRoute(
                  path: RoutePath.goals,
                  pageBuilder: (BuildContext context, GoRouterState state) {
                    return MaterialPage(
                        key: state.pageKey, child: const Text('goals screen'));
                  })
            ]),
            StatefulShellBranch(navigatorKey: generateKey('profile'), routes: [
              GoRoute(
                  path: RoutePath.profile,
                  pageBuilder: (BuildContext context, GoRouterState state) {
                    return MaterialPage(
                        key: state.pageKey,
                        child: const Text('profile screen'));
                  })
            ]),
          ],
          builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
            return ScaffoldWithNestedNavigation(
              child: navigationShell,
            );
          },
        ),
      ],
    );
  }
}
