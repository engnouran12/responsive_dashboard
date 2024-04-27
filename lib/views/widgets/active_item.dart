import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilities/app_style.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawermodel,
  });

  final DrawerItemModel drawermodel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
       SvgPicture.asset(drawermodel.image),
      title: Text(
        drawermodel.tittle,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
