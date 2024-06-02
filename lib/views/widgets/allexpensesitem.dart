import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/views/widgets/allex_list.dart';
import 'package:responsive_dash_board/views/widgets/allexpenses_row.dart';
import 'package:responsive_dash_board/views/widgets/custom_container.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          Expanded(child: AllExpensesRow()),
          Expanded(child: AllExList())

          //Allexitem(allmodel: items[0])
        ],
      ),
    );
  }
}
