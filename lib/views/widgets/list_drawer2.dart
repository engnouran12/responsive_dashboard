import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class ListDrawer2 extends StatelessWidget {
  const ListDrawer2({
    super.key,
    required this.items2,
  });

  final List<DrawerItemModel> items2;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        // shrinkWrap: true,
        //   physics: const NeverScrollableScrollPhysics(),
        itemCount: items2.length,
        itemBuilder: (c, i) =>
            DrawerItem(isactive: true, 
            drawermodel: items2[i]));
  }
}
