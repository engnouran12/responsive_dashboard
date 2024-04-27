import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_item.dart';
import 'package:responsive_dash_board/views/widgets/inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawermodel, required this.isactive});

  final DrawerItemModel drawermodel;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? ActiveItem(
            drawermodel: drawermodel,
          )
        : InactiveItem(drawermodel: drawermodel);
  }
}
