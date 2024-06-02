import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilities/app_assets.dart';
import 'package:responsive_dash_board/models/all_ex_model.dart';
import 'package:responsive_dash_board/views/widgets/allex_list.dart';
import 'package:responsive_dash_board/views/widgets/allexp_item.dart';
import 'package:responsive_dash_board/views/widgets/allexpenses_row.dart';
import 'package:responsive_dash_board/views/widgets/allexpensesitem.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(40.0),
      child: AllExpensesItem(),
    );
  }
}
