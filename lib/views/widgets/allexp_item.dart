import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilities/app_assets.dart';
import 'package:responsive_dash_board/core/utilities/app_style.dart';
import 'package:responsive_dash_board/models/all_ex_model.dart';
import 'package:responsive_dash_board/views/widgets/row_item_ex.dart';

class Allexitem extends StatelessWidget {
  const Allexitem({
    super.key,
    required this.allmodel,
  });
  final AllExModel allmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.
      symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderAllExpenses(
            img: allmodel.img,
            //SvgPicture.asset(Assets.imagesExpenses),
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allmodel.tittle,
              style: AppStyles.styleMedium16(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
           FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allmodel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
          ),
            const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allmodel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),



        ],
      ),
    );
  }
}
