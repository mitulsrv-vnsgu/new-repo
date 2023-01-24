import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/presentation/chat_with_doctor_screen/models/chat_with_doctor_model.dart';
import 'package:flutter/material.dart';

class ChatWithDoctorController extends GetxController {
  TextEditingController typemessageController = TextEditingController();

  Rx<ChatWithDoctorModel> chatWithDoctorModelObj = ChatWithDoctorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    typemessageController.dispose();
  }
}
