import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilities/app_assets.dart';
import 'package:responsive_dash_board/models/all_ex_model.dart';
import 'package:responsive_dash_board/views/widgets/allexp_item.dart';

class AllExList extends StatefulWidget {
  const AllExList({super.key});

  @override
  State<AllExList> createState() => _AllExListState();
}

class _AllExListState extends State<AllExList> {
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
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: items.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: Allexitem(
                        allmodel: item, isselected: selectedindex == index)),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedindex = index;
                  });
                },
                child: Allexitem(
                  isselected: selectedindex == index,
                  allmodel: item,
                ),
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}
