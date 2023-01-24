import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/presentation/ambulance_screen/models/ambulance_model.dart';
import 'package:flutter/material.dart';

class AmbulanceController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AmbulanceModel> ambulanceModelObj = AmbulanceModel().obs;

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
