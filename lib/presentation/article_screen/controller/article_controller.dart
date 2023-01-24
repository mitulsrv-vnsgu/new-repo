import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/presentation/article_screen/models/article_model.dart';
import 'package:flutter/material.dart';

class ArticleController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ArticleModel> articleModelObj = ArticleModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
// TODO: implement Actions
    });
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
