import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailFormController = TextEditingController();

  TextEditingController passwordFormController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailFormController.dispose();
    passwordFormController.dispose();
  }
}
