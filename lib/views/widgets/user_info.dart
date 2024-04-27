import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilities/app_assets.dart';
import 'package:responsive_dash_board/core/utilities/app_style.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
        // color: Colors.white,
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(Assets.imagesAvatar1),
          title: Text("John Doe", style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(
            'demi@gmail.com',
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
