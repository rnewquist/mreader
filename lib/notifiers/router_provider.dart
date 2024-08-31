import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mreader/notifiers/route_notifier.dart';
import 'package:mreader/pages/browse.dart';
import 'package:mreader/pages/home.dart';
import 'package:mreader/pages/library.dart';
import 'package:mreader/pages/settings.dart';
import 'package:mreader/pages/splash.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorLibraryKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellLibrary');
final _shellNavigatorBrowseKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellBrowse');
final _shellNavigatorSettingsKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellSettings');

final routerProvider = Provider<GoRouter>((ref) {
  RouterState routerState = ref.watch(routerNotifier);
  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: SplashPage.routeLocation,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: SplashPage.routeLocation,
          name: SplashPage.routeName,
          pageBuilder: (context, state) =>
              const MaterialPage(child: SplashPage()),
        ),
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) => HomePage(
                  navigationShell: navigationShell,
                ),
            branches: <StatefulShellBranch>[
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorLibraryKey,
                  routes: [
                    GoRoute(
                      path: LibraryPage.routeLocation,
                      name: LibraryPage.routeName,
                      pageBuilder: (context, state) =>
                           MaterialPage<void>(key: state.pageKey, child: const LibraryPage()),
                    )
                  ]),
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorBrowseKey,
                  routes: [
                    GoRoute(
                      path: BrowsePage.routeLocation,
                      name: BrowsePage.routeName,
                      pageBuilder: (context, state) =>
                           MaterialPage<void>(key: state.pageKey, child: const BrowsePage()),
                    )
                  ]),
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorSettingsKey,
                  routes: [
                    GoRoute(
                      path: SettingsPage.routeLocation,
                      name: SettingsPage.routeName,
                      pageBuilder: (context, state) =>
                           MaterialPage<void>(key: state.pageKey, child: const SettingsPage()),
                    )
                  ]),
            ])
      ],
      redirect: (BuildContext context, GoRouterState state) {
        final isSplash = state.fullPath == SplashPage.routeLocation;
        if (isSplash && !routerState.showSplash) {
          return LibraryPage.routeLocation;
        }
        return null;
      });
});
