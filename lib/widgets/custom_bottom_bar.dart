import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconlybulkhom,
      type: BottomBarEnum.Iconlybulkhom,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconlylightme,
      type: BottomBarEnum.Iconlylightme,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconlylightca,
      type: BottomBarEnum.Iconlylightca,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconlylightpr,
      type: BottomBarEnum.Iconlylightpr,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  32.00,
                ),
                width: getSize(
                  32.00,
                ),
                color: ColorConstant.gray500,
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  32.00,
                ),
                width: getSize(
                  32.00,
                ),
                color: ColorConstant.blue600,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Iconlybulkhom,
  Iconlylightme,
  Iconlylightca,
  Iconlylightpr,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
