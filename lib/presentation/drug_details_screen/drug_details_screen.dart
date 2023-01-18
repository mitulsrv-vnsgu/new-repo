import 'controller/drug_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';
import 'package:mitul_s_application38/widgets/custom_icon_button.dart';

class DrugDetailsScreen extends GetWidget<DrugDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                title: AppbarSubtitle(text: "lbl_drugs_detail".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgIconlylightbu,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 16))
                ]),
            body: Padding(
                padding: getPadding(left: 20, top: 48, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse27image,
                          height: getSize(147.00),
                          width: getSize(147.00),
                          alignment: Alignment.center,
                          margin: getMargin(left: 94, right: 94)),
                      Padding(
                          padding: getPadding(top: 62),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_obh_combi".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold20
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.00))),
                                      Padding(
                                          padding:
                                              getPadding(top: 7, right: 10),
                                          child: Text("lbl_75ml".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterSemiBold16Gray500
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00)))),
                                      Padding(
                                          padding:
                                              getPadding(top: 10, right: 10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(14.00),
                                                    width: getSize(14.00),
                                                    margin: getMargin(
                                                        top: 1, bottom: 1)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(14.00),
                                                    width: getSize(14.00),
                                                    margin: getMargin(
                                                        left: 5,
                                                        top: 1,
                                                        bottom: 1)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(14.00),
                                                    width: getSize(14.00),
                                                    margin: getMargin(
                                                        left: 5,
                                                        top: 1,
                                                        bottom: 1)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(14.00),
                                                    width: getSize(14.00),
                                                    margin: getMargin(
                                                        left: 5,
                                                        top: 1,
                                                        bottom: 1)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 5),
                                                    child: Text("lbl_4_0".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold14Cyan300
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.00))))
                                              ]))
                                    ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgIconlyboldhea,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(top: 28, bottom: 27))
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgComponent3,
                                              height: getSize(32.00),
                                              width: getSize(32.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 23, top: 1, bottom: 1),
                                              child: Text("lbl_1".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold24
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgComponent2,
                                              height: getSize(32.00),
                                              width: getSize(32.00),
                                              margin: getMargin(left: 29))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_9_99".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold26
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 39, right: 10),
                          child: Text("lbl_description".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(331.00),
                              margin: getMargin(left: 1, top: 13, right: 2),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_obh_combi_is_a2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(1.38))),
                                    TextSpan(
                                        text: "lbl_read_more".tr,
                                        style: TextStyle(
                                            color: ColorConstant.cyan300,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: getVerticalSize(1.38)))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, top: 80, right: 20, bottom: 28),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomIconButton(
                          height: 50,
                          width: 50,
                          shape: IconButtonShape.RoundedBorder8,
                          padding: IconButtonPadding.PaddingAll14,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCarticon)),
                      CustomButton(
                          height: 50,
                          width: 266,
                          text: "lbl_buy_now".tr,
                          onTap: onTapBuynow)
                    ]))));
  }

  onTapBuynow() {
    Get.toNamed(AppRoutes.cartScreen);
  }
}
