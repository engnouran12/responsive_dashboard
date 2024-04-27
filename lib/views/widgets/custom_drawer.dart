import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/utilities/app_assets.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/inactive_item.dart';
import 'package:responsive_dash_board/views/widgets/list_drawer1.dart';
import 'package:responsive_dash_board/views/widgets/list_drawer2.dart';
import 'package:responsive_dash_board/views/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});
  static List<DrawerItemModel> items = [
    DrawerItemModel(tittle: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(
        tittle: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(tittle: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(
        tittle: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(
        tittle: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  List<DrawerItemModel> items2 = [
    DrawerItemModel(tittle: 'Setting system', image: Assets.imagesSettings),
    DrawerItemModel(tittle: 'Logout account', image: Assets.imagesLogout),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(child: UserInfo()),
      const SliverToBoxAdapter(
        child: SizedBox(
          height: 8,
        ),
      ),
      ListDrawer(items: items),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            InactiveItem(
              drawermodel: DrawerItemModel(
                  tittle: 'Setting system',
                   image: Assets.imagesSettings),
            ),
            InactiveItem(
              drawermodel: DrawerItemModel(
                  tittle: 'Logout account', image: Assets.imagesLogout),
            ),
            const SizedBox(
              height: 48,
            ),
          ],
        ),
      )
    ]);
  }
}
