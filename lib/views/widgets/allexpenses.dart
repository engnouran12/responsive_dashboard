import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilities/app_assets.dart';
import 'package:responsive_dash_board/models/all_ex_model.dart';
import 'package:responsive_dash_board/views/widgets/allexp_item.dart';
import 'package:responsive_dash_board/views/widgets/allexpenses_row.dart';

class AllExpenses extends StatelessWidget {
  AllExpenses({
    super.key,
  });

  @override
  final List<AllExModel> items = [
    const AllExModel(
        img: Assets.imagesBalance,
        tittle: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExModel(
        img: Assets.imagesIncome,
        tittle: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExModel(
        img: Assets.imagesExpenses,
        tittle: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 34), // gap: 34px
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), // border-radius: 12px 0px 0px 0px
          ),
          // border: Border(
          //   all: BorderSide(
          //     color: Colors.black, // border color
          //     width: 1, // border width
          //   ),

          //color: Colors.grey.withOpacity(0),
          // padding: ,
          //decoration:
          //color: Color(0xffffffff),
        ),
        child: Column(
          children: [const AllExpensesRow(), Allexitem(allmodel: items[0])],
        ),
      ),
    );
  }
}
