import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilities/app_style.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class InactiveItem extends StatelessWidget {
  const InactiveItem({
    super.key,
    required this.drawermodel,
  });

  final DrawerItemModel drawermodel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawermodel.image),
      title: Text(
        drawermodel.tittle,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
