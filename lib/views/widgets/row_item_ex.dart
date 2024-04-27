import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilities/app_assets.dart';
import 'package:responsive_dash_board/models/all_ex_model.dart';

class HeaderAllExpenses extends StatelessWidget {
  const HeaderAllExpenses({
    super.key,
    required this.img,
  });

  //final AllExModel allexmodel;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  //  imageBackground ?? const Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(child: SvgPicture.asset(img)),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
