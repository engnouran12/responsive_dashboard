import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/views/widgets/allexpenses.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/quickinvoice_widget.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer()),
        const SizedBox(
          width: 16,
        ),
        const Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
             SizedBox(height: 16),
              // Expanded(flex: 2, child:
              // QuicustomckInvoice())
            ],
          ),
        )
      ],
    );
  }
}
