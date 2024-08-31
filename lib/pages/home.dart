import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/library.png'),
                  fit: BoxFit.cover)),
          child: navigationShell),
      bottomNavigationBar:ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: NavigationBar(
            backgroundColor: Colors.white.withOpacity(0.1),
            indicatorColor: Colors.white.withOpacity(0.2),
                  selectedIndex: navigationShell.currentIndex,
                  destinations: const [
                    NavigationDestination(
                        label: 'Library', icon: Icon(Icons.bookmarks)),
                    NavigationDestination(
                        label: 'Browse', icon: Icon(Icons.menu_book)),
                    NavigationDestination(
                        label: 'Settings', icon: Icon(Icons.settings)),
                  ],
                  onDestinationSelected: (index) {
                    navigationShell.goBranch(
                      index,
                      // A common pattern when using bottom navigation bars is to support
                      // navigating to the initial location when tapping the item that is
                      // already active. This example demonstrates how to support this behavior,
                      // using the initialLocation parameter of goBranch.
                      initialLocation: index == navigationShell.currentIndex,
                    );
                  },
                ),
        ),
      ),
    );
  }
}
