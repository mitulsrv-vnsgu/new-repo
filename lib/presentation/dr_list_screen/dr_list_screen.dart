import '../dr_list_screen/widgets/dr_list_item_widget.dart';
import 'controller/dr_list_controller.dart';
import 'models/dr_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';

class DrListScreen extends GetWidget<DrListController> {
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
                title: AppbarSubtitle(text: "lbl_top_doctor".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16.00),
                      width: getHorizontalSize(4.00),
                      svgPath: ImageConstant.imgComponent1,
                      margin: getMargin(all: 20))
                ]),
            body: Padding(
                padding: getPadding(left: 21, top: 24, right: 20, bottom: 131),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16.00));
                    },
                    itemCount:
                        controller.drListModelObj.value.drListItemList.length,
                    itemBuilder: (context, index) {
                      DrListItemModel model =
                          controller.drListModelObj.value.drListItemList[index];
                      return DrListItemWidget(model,
                          onTapRowthumbnailone: onTapRowthumbnailone);
                    })))));
  }

  onTapRowthumbnailone() {
    Get.toNamed(AppRoutes.drDetailsScreen);
  }
}
