import 'package:flutter/material.dart';

class AppTransformFlipY extends StatelessWidget {
  final Widget child;
  const AppTransformFlipY({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Transform.flip(flipY: true, child: child);
  }
}
