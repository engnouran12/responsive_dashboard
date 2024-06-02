import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/allexpensesitem.dart';
import 'package:responsive_dash_board/views/widgets/custom_container.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_row.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [QuickInvoiceRow()],
    ));
  }
}
