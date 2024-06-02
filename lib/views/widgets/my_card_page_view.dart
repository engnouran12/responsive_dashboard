import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageControllerl});
  final PageController pageControllerl;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      children: List.generate(3, (index) => const MyCard()),
    );
  }
}