import '../dashboard_page/widgets/doctor_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard_model.dart';
import 'models/doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';
import 'package:mitul_s_application38/widgets/custom_icon_button.dart';
import 'package:mitul_s_application38/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: AppbarTitle(
            text: "msg_find_your_desire".tr,
            margin: getMargin(
              left: 20,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                26.00,
              ),
              width: getHorizontalSize(
                24.00,
              ),
              svgPath: ImageConstant.imgNotificationic,
              margin: getMargin(
                left: 20,
                top: 12,
                right: 20,
                bottom: 17,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 20,
                top: 24,
                bottom: 70,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    width: 335,
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "msg_search_doctor_drugs".tr,
                    margin: getMargin(
                      right: 10,
                    ),
                    variant: TextFormFieldVariant.OutlineBluegray50,
                    shape: TextFormFieldShape.RoundedBorder8,
                    padding: TextFormFieldPadding.PaddingAll10,
                    fontStyle: TextFormFieldFontStyle.InterRegular12,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: getMargin(
                        left: 17,
                        top: 10,
                        right: 12,
                        bottom: 9,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconlyLightoutlineSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        40.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 20,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgDoctoricon,
                          height: getSize(
                            71.00,
                          ),
                          width: getSize(
                            71.00,
                          ),
                        ),
                        CustomIconButton(
                          height: 71,
                          width: 71,
                          margin: getMargin(
                            left: 17,
                          ),
                          variant: IconButtonVariant.FillCyan300,
                          shape: IconButtonShape.RoundedBorder15,
                          padding: IconButtonPadding.PaddingAll14,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgMedicineicon,
                          ),
                        ),
                        CustomIconButton(
                          height: 71,
                          width: 71,
                          margin: getMargin(
                            left: 17,
                          ),
                          variant: IconButtonVariant.FillCyan300,
                          shape: IconButtonShape.RoundedBorder15,
                          padding: IconButtonPadding.PaddingAll14,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgAmbulanceicon,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArticalsicon,
                          height: getSize(
                            71.00,
                          ),
                          width: getSize(
                            71.00,
                          ),
                          margin: getMargin(
                            left: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 20,
                      right: 10,
                    ),
                    decoration: AppDecoration.fillBluegray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            186.00,
                          ),
                          margin: getMargin(
                            left: 26,
                            top: 19,
                            right: 26,
                          ),
                          child: Text(
                            "msg_early_protection".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold20.copyWith(
                              height: getVerticalSize(
                                1.03,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: 29,
                          width: 108,
                          text: "lbl_learn_more".tr,
                          margin: getMargin(
                            left: 25,
                            top: 11,
                            right: 25,
                            bottom: 11,
                          ),
                          padding: ButtonPadding.PaddingAll6,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 39,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_top_doctor".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold16.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 210,
                            top: 1,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_see_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        186.00,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 1,
                            top: 13,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                14.00,
                              ),
                            );
                          },
                          itemCount: controller
                              .dashboardModelObj.value.doctorItemList.length,
                          itemBuilder: (context, index) {
                            DoctorItemModel model = controller
                                .dashboardModelObj.value.doctorItemList[index];
                            return DoctorItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 28,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_healt_article".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold16.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 200,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_see_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 15,
                      right: 10,
                    ),
                    decoration: AppDecoration.outlineBluegray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbnail,
                          height: getSize(
                            55.00,
                          ),
                          width: getSize(
                            55.00,
                          ),
                          margin: getMargin(
                            left: 6,
                            top: 6,
                            bottom: 6,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 16,
                            bottom: 13,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: getHorizontalSize(
                                    179.00,
                                  ),
                                  child: Text(
                                    "msg_the_25_healthiest".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold10.copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                  right: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "lbl_jun_10_2021".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium8Gray500
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: getSize(
                                        2.00,
                                      ),
                                      width: getSize(
                                        2.00,
                                      ),
                                      margin: getMargin(
                                        left: 5,
                                        top: 3,
                                        bottom: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.gray500,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_5min_read".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium8Gray500
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
