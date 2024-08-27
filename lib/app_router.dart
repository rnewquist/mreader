import 'package:flutter/material.dart';
import 'package:mreader/app_link.dart';

class AppRouterDelegate extends RouterDelegate<AppLink> with ChangeNotifier {
  final GlobalKey<NavigatorState> _navKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        verticalDirection: VerticalDirection.up,
        children: [
          Expanded(
              child: Navigator(
            key: _navKey,
            onDidRemovePage: (page) => {},
            pages: <Widget>[].map(_wrapContentInPage).toList(),
          )),
        ],
      ),
    );
  }

  Page _wrapContentInPage(Widget e) {
    return MaterialPage<void>(child: e);
  }

  bool tryGoBack() {
    return true; //false lets the whole app go into background
  }



  bool _handleNavigatorPop(Route<dynamic> route, dynamic result) {
    // Ask the route if it can handle pop internally...
    if (route.didPop(result)) {
      // If not, we pop one level in our stack
      return tryGoBack();
    }
    return true;
  }

  @override
  Future<bool> popRoute() async => tryGoBack();

  @override
  Future<void> setNewRoutePath(AppLink configuration) async {
    debugPrint('setNewRoutePath: ${configuration.toLocation()}');
    return;
  }
}
