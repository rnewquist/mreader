import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mreader/widgets/glass.dart';

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
      bottomNavigationBar:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 1.5,color: Colors.white.withOpacity(0.15),),
          Glass(
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              indicatorColor: Colors.white.withOpacity(0.15),
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
        ],
      ),
    );
  }
}
