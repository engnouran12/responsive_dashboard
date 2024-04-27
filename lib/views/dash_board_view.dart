import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/adaptivelayout.dart';
import 'package:responsive_dash_board/views/widgets/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobilelayout: (context) => const SizedBox(),
          taplayout: (context) => const SizedBox(),
          desktoplayout: (context) => const DashBoardDesktopLayout()),
    );
  }
}
