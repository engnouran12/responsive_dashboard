import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    this.padding,
  });
  final double? padding;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(padding ?? 20),
      margin: const EdgeInsets.symmetric(vertical: 34), // gap: 34px
      decoration: const BoxDecoration(
        color: Colors.green,
        //Colors.grey.withOpacity(0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12), // border-radius: 12px 0px 0px 0px
        ),
      ),

      //child: const Column(
      //   children: [
      //     AllExpensesRow(),
      //     AllExList()

      //     //Allexitem(allmodel: items[0])
      //   ],
      // ),
    );
  }
}
