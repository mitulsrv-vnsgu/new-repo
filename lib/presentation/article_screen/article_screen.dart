import 'controller/article_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_text_form_field.dart';

class ArticleScreen extends GetWidget<ArticleController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowdown,
                    margin: getMargin(left: 21, top: 16, bottom: 16)),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_articles".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16.00),
                      width: getHorizontalSize(4.00),
                      svgPath: ImageConstant.imgComponent1,
                      margin: getMargin(all: 20))
                ]),
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextFormField(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "msg_search_articles".tr,
                          margin: getMargin(left: 20, top: 23, right: 20),
                          variant: TextFormFieldVariant.OutlineBluegray50,
                          shape: TextFormFieldShape.RoundedBorder8,
                          padding: TextFormFieldPadding.PaddingAll10,
                          fontStyle: TextFormFieldFontStyle.InterRegular12,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 11, right: 12, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgIconlyLightoutlineSearch)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(40.00))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 20, right: 20),
                              child: Text("msg_popular_articles".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold16Black900
                                      .copyWith(
                                          height: getVerticalSize(1.00)))))
                    ]))));
  }
}
