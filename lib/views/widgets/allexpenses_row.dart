import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/utilities/app_style.dart';

class AllExpensesRow extends StatelessWidget {
  const AllExpensesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Row(
        children: [
          Text(
            'All Expenses',
            style: AppStyles.styleSemiBold20(context),
          ),
          //const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // Adjust as needed
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.white, // Adjust as needed
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    'Monthly',
                    style: AppStyles.styleMedium16(context),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Transform.rotate(
                    angle: -1.571,
                    child: const Center(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
