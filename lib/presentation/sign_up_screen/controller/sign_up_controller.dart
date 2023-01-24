import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  RxBool checkbox = false.obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputOneController.dispose();
    inputTwoController.dispose();
  }
}
