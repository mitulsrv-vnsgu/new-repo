import 'controller/message_history_tab_container_controller.dart';
import 'models/message_history_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/presentation/message_history_page/message_history_page.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class MessageHistoryTabContainerPage extends StatelessWidget {
  MessageHistoryTabContainerController controller = Get.put(
      MessageHistoryTabContainerController(
          MessageHistoryTabContainerModel().obs));

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
              "lbl_message".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold24.copyWith(
                height: getVerticalSize(
                  1.10,
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
                left: 204,
                top: 8,
                right: 20,
                bottom: 11,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
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
                    svgPath: ImageConstant.imgIconlylightou24x24,
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
                top: 11,
                right: 19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      335.00,
                    ),
                    margin: getMargin(
                      right: 1,
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
                          text: "lbl_all".tr,
                        ),
                        Tab(
                          text: "lbl_group".tr,
                        ),
                        Tab(
                          text: "lbl_private".tr,
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
                      left: 1,
                      top: 32,
                    ),
                    height: getVerticalSize(
                      182.00,
                    ),
                    child: TabBarView(
                      controller: controller.group125Controller,
                      children: [
                        MessageHistoryPage(),
                        MessageHistoryPage(),
                        MessageHistoryPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 55,
          width: 55,
          variant: FloatingButtonVariant.OutlineBlack90019,
          child: CustomImageView(
            svgPath: ImageConstant.imgGroup145,
            height: getVerticalSize(
              27.50,
            ),
            width: getHorizontalSize(
              27.50,
            ),
          ),
        ),
      ),
    );
  }
}
