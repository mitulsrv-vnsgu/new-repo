import '../find_doctors_screen/widgets/doctors_item_widget.dart';
import '../find_doctors_screen/widgets/find_doctors_item_widget.dart';
import 'controller/find_doctors_controller.dart';
import 'models/doctors_item_model.dart';
import 'models/find_doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

class FindDoctorsScreen extends GetWidget<FindDoctorsController> {
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
          leadingWidth: 64,
          leading: AppbarImage(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            svgPath: ImageConstant.imgButton,
            margin: getMargin(
              left: 24,
              bottom: 8,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle2(
            text: "lbl_find_doctors".tr,
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "lbl_find_a_doctor".tr,
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 24,
                    ),
                    variant: TextFormFieldVariant.OutlineGray200_1,
                    fontStyle: TextFormFieldFontStyle.RalewayRomanRegular12,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: getMargin(
                        left: 17,
                        top: 14,
                        right: 12,
                        bottom: 14,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconlyLightoutlineSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        46.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 29,
                        right: 24,
                      ),
                      child: Text(
                        "lbl_category".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold18.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.30,
                          ),
                          height: getVerticalSize(
                            1.12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 12,
                      right: 24,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            83.00,
                          ),
                          crossAxisCount: 3,
                          mainAxisSpacing: getHorizontalSize(
                            108.00,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            108.00,
                          ),
                        ),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.findDoctorsModelObj.value
                            .findDoctorsItemList.length,
                        itemBuilder: (context, index) {
                          FindDoctorsItemModel model = controller
                              .findDoctorsModelObj
                              .value
                              .findDoctorsItemList[index];
                          return FindDoctorsItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      child: Text(
                        "msg_recommended_doc".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtRalewayRomanSemiBold18Gray900.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.30,
                          ),
                          height: getVerticalSize(
                            1.15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 24,
                      top: 15,
                      right: 24,
                    ),
                    decoration: AppDecoration.outlineBluegray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse88,
                          height: getSize(
                            88.00,
                          ),
                          width: getSize(
                            88.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              44.00,
                            ),
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 16,
                            bottom: 28,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 16,
                            bottom: 23,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                  right: 10,
                                ),
                                child: Text(
                                  "msg_dr_marcus_hori".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanSemiBold16
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.28,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_chardiologist".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanRegular14
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.15,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  1.00,
                                ),
                                width: getHorizontalSize(
                                  167.00,
                                ),
                                margin: getMargin(
                                  top: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray50,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 23,
                                  right: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgIconlyboldsta,
                                      height: getSize(
                                        16.00,
                                      ),
                                      width: getSize(
                                        16.00,
                                      ),
                                      margin: getMargin(
                                        bottom: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_4_7".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRomanMedium12
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgIconlyboldloc16x16,
                                      height: getSize(
                                        16.00,
                                      ),
                                      width: getSize(
                                        16.00,
                                      ),
                                      margin: getMargin(
                                        left: 24,
                                        bottom: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                      ),
                                      child: Text(
                                        "lbl_800m_away".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanMedium14Bluegray801
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 42,
                        right: 24,
                      ),
                      child: Text(
                        "msg_your_recent_doc".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtRalewayRomanSemiBold18Gray900.copyWith(
                          height: getVerticalSize(
                            1.15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      105.00,
                    ),
                    child: Obx(
                      () => ListView.builder(
                        padding: getPadding(
                          left: 24,
                          top: 15,
                          right: 23,
                        ),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: controller
                            .findDoctorsModelObj.value.doctorsItemList.length,
                        itemBuilder: (context, index) {
                          DoctorsItemModel model = controller
                              .findDoctorsModelObj.value.doctorsItemList[index];
                          return DoctorsItemWidget(
                            model,
                          );
                        },
                      ),
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
