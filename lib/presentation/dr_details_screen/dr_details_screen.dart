import '../dr_details_screen/widgets/dates_item_widget.dart';
import '../dr_details_screen/widgets/listtime_item_widget.dart';
import 'controller/dr_details_controller.dart';
import 'models/dates_item_model.dart';
import 'models/listtime_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';
import 'package:mitul_s_application38/widgets/custom_icon_button.dart';

class DrDetailsScreen extends GetWidget<DrDetailsController> {
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
                title: AppbarSubtitle(text: "lbl_doctor_detail".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16.00),
                      width: getHorizontalSize(4.00),
                      svgPath: ImageConstant.imgComponent1,
                      margin: getMargin(all: 20))
                ]),
            body: Padding(
                padding: getPadding(left: 10, top: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 1, right: 10),
                          decoration: AppDecoration.outlineBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgThumbnail1,
                                    height: getSize(111.00),
                                    width: getSize(111.00),
                                    margin: getMargin(
                                        left: 10, top: 10, bottom: 6)),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 15, bottom: 13),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_dr_marcus_horizon".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterSemiBold18
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))),
                                          Padding(
                                              padding:
                                                  getPadding(top: 5, right: 10),
                                              child: Text(
                                                  "lbl_chardiologist".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium12
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 3, top: 16, right: 10),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgStar,
                                                        height: getSize(13.00),
                                                        width: getSize(13.00),
                                                        margin: getMargin(
                                                            bottom: 2)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 4, top: 1),
                                                        child: Text(
                                                            "lbl_4_7".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium12Cyan300
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.00))))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(top: 8, right: 10),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIconlyboldloc,
                                                        height: getSize(13.00),
                                                        width: getSize(13.00),
                                                        margin: getMargin(
                                                            bottom: 2)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 3, top: 1),
                                                        child: Text(
                                                            "lbl_800m_away".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium12
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.00))))
                                                  ]))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 23, right: 10),
                          child: Text("lbl_about".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          width: getHorizontalSize(313.00),
                          margin: getMargin(left: 1, top: 14, right: 10),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_lorem_ipsum_dolor2".tr,
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
                              textAlign: TextAlign.left)),
                      Align(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 4, top: 36),
                              child: IntrinsicWidth(
                                  child: Container(
                                      height: getVerticalSize(64.00),
                                      child: Obx(() => ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12.00));
                                          },
                                          itemCount: controller
                                              .drDetailsModelObj
                                              .value
                                              .datesItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            DatesItemModel model = controller
                                                .drDetailsModelObj
                                                .value
                                                .datesItemList[index];
                                            return DatesItemWidget(model);
                                          })))))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 38, right: 10),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Padding(
                          padding: getPadding(top: 37, right: 10),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15.00));
                              },
                              itemCount: controller.drDetailsModelObj.value
                                  .listtimeItemList.length,
                              itemBuilder: (context, index) {
                                ListtimeItemModel model = controller
                                    .drDetailsModelObj
                                    .value
                                    .listtimeItemList[index];
                                return ListtimeItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 10, top: 47, right: 10, bottom: 28),
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
                          onTap: () {
                            onTapBtnChatIcon();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgChaticon)),
                      CustomButton(
                          height: 50,
                          width: 266,
                          text: "lbl_book_apointment".tr,
                          onTap: onTapBookapointmentOne)
                    ]))));
  }

  onTapBtnChatIcon() {
    Get.toNamed(AppRoutes.chatScreen);
  }

  onTapBookapointmentOne() {
    Get.toNamed(AppRoutes.bookAnAppointmentScreen);
  }
}
