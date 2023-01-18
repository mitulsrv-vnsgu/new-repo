import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController fullNameFormController = TextEditingController();

  TextEditingController emailFormController = TextEditingController();

  TextEditingController passwordFormController = TextEditingController();

  TextEditingController passwordAgainController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullNameFormController.dispose();
    emailFormController.dispose();
    passwordFormController.dispose();
    passwordAgainController.dispose();
  }
}
