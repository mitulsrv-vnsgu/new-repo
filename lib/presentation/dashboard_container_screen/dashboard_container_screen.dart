import 'controller/dashboard_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/presentation/dashboard_page/dashboard_page.dart';
import 'package:mitul_s_application38/presentation/message_page/message_page.dart';
import 'package:mitul_s_application38/presentation/schedule_page/schedule_page.dart';
import 'package:mitul_s_application38/presentation/settigns_page/settigns_page.dart';
import 'package:mitul_s_application38/widgets/custom_bottom_bar.dart';

class DashboardContainerScreen extends GetWidget<DashboardContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.dashboardPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.schedulePage:
        return SchedulePage();
      case AppRoutes.settignsPage:
        return SettignsPage();
      default:
        return DashboardPage();
    }
  }
}
