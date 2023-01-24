import 'controller/schedule_tab_container_controller.dart';
import 'models/schedule_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/presentation/schedule_page/schedule_page.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ScheduleTabContainerPage extends StatelessWidget {
  ScheduleTabContainerController controller =
      Get.put(ScheduleTabContainerController(ScheduleTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: Padding(
            padding: getPadding(
              left: 21,
            ),
            child: Text(
              "lbl_schedule".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanSemiBold24.copyWith(
                height: getVerticalSize(
                  1.14,
                ),
              ),
            ),
          ),
          actions: [
            Container(
              height: getVerticalSize(
                33.00,
              ),
              width: getHorizontalSize(
                24.00,
              ),
              margin: getMargin(
                left: 201,
                top: 8,
                right: 20,
                bottom: 9,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  AppbarImage(
                    height: getVerticalSize(
                      16.00,
                    ),
                    width: getHorizontalSize(
                      4.00,
                    ),
                    svgPath: ImageConstant.imgComponent1WhiteA700,
                    margin: getMargin(
                      left: 20,
                      top: 17,
                    ),
                  ),
                  AppbarImage(
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    svgPath: ImageConstant.imgIconlylightno,
                    margin: getMargin(
                      bottom: 9,
                    ),
                  ),
                ],
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
                top: 13,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      335.00,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray102,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                    ),
                    child: TabBar(
                      controller: controller.group125Controller,
                      tabs: [
                        Tab(
                          text: "lbl_upcoming".tr,
                        ),
                        Tab(
                          text: "lbl_completed".tr,
                        ),
                        Tab(
                          text: "lbl_canceled".tr,
                        ),
                      ],
                      labelColor: ColorConstant.whiteA700,
                      unselectedLabelColor: ColorConstant.gray901,
                      indicator: BoxDecoration(
                        color: ColorConstant.blue600,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 32,
                    ),
                    height: getVerticalSize(
                      374.00,
                    ),
                    child: TabBarView(
                      controller: controller.group125Controller,
                      children: [
                        SchedulePage(),
                        SchedulePage(),
                        SchedulePage(),
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
