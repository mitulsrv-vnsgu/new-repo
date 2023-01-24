import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/presentation/home_page/home_page.dart';
import 'package:mitul_s_application39/presentation/message_history_tab_container_page/message_history_tab_container_page.dart';
import 'package:mitul_s_application39/presentation/profile_page/profile_page.dart';
import 'package:mitul_s_application39/presentation/schedule_tab_container_page/schedule_tab_container_page.dart';
import 'package:mitul_s_application39/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA701,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconlybulkhom:
        return AppRoutes.homePage;
      case BottomBarEnum.Iconlylightme:
        return AppRoutes.messageHistoryTabContainerPage;
      case BottomBarEnum.Iconlylightca:
        return AppRoutes.scheduleTabContainerPage;
      case BottomBarEnum.Iconlylightpr:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messageHistoryTabContainerPage:
        return MessageHistoryTabContainerPage();
      case AppRoutes.scheduleTabContainerPage:
        return ScheduleTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
