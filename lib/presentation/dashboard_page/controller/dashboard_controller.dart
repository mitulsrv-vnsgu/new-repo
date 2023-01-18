import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/presentation/dashboard_page/models/dashboard_model.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  DashboardController(this.dashboardModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<DashboardModel> dashboardModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
