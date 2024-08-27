import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FractionallySizedBox(
                      widthFactor: 0.5, child: Image.asset('assets/images/icon.png')),
                  const Text('mReader', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),)
                ],
              ),),
      ),
    );
  }
}
