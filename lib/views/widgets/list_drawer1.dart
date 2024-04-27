import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class ListDrawer extends StatefulWidget {
  const ListDrawer({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  State<ListDrawer> createState() => _ListDrawerState();
}

class _ListDrawerState extends State<ListDrawer> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: widget.items.length,
        itemBuilder: (c, i) => GestureDetector(
              onTap: () {
                if (selectedindex != i) {
                  setState(() {
                    selectedindex = i;
                  });
                  //print(selectedindex);
                }
              },
              child: DrawerItem(
                drawermodel: widget.items[i],
                isactive: selectedindex == i,
              ),
            ));
  }
}
