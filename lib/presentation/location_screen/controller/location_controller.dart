import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/presentation/location_screen/models/location_model.dart';
import 'package:flutter/material.dart';

class LocationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<LocationModel> locationModelObj = LocationModel().obs;

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
