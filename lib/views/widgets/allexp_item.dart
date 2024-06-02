import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilities/app_assets.dart';
import 'package:responsive_dash_board/core/utilities/app_style.dart';
import 'package:responsive_dash_board/models/all_ex_model.dart';
import 'package:responsive_dash_board/views/widgets/active_item.dart';
import 'package:responsive_dash_board/views/widgets/all_exp_active_inactive.dart';
import 'package:responsive_dash_board/views/widgets/row_item_ex.dart';

class Allexitem extends StatelessWidget {
  const Allexitem({
    super.key,
    required this.allmodel,
    required this.isselected,
  });
  final AllExModel allmodel;
  final bool isselected;
  @override
  Widget build(BuildContext context) {
    return isselected
        ? ActiveItemALLExpenses(allmodel: allmodel)
        : InActiveItemALLExpenses(allmodel: allmodel,);
  }
}
