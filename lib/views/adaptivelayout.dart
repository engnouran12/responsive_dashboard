
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key, required this.mobilelayout,
       required this.taplayout,
        required this.desktoplayout});
  final WidgetBuilder mobilelayout, taplayout, desktoplayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return mobilelayout(context);
      } else if (constrains.maxWidth < 900) {
        return taplayout(context);
      } else {
        return desktoplayout(context);
      }
    });
  }
}
