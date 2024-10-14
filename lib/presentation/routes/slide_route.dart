import 'package:flutter/material.dart';

class SlideRoute extends PageRouteBuilder {
  final Widget page;

  SlideRoute({required this.page})
      : super(
          pageBuilder: (context, animation1, animation2) => page,
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, animation1, animation2, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: const Offset(0, 0),
              ).animate(animation1),
              child: child,
            );
          },
        );
}
