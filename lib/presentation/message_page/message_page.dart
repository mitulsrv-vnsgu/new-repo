import '../message_page/widgets/message_item_widget.dart';
import 'controller/message_controller.dart';
import 'models/message_item_model.dart';
import 'models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';
import 'package:mitul_s_application38/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessageController controller = Get.put(MessageController(MessageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: AppbarTitle(
                    text: "lbl_message".tr, margin: getMargin(left: 21)),
                actions: [
                  Container(
                      height: getVerticalSize(28.00),
                      width: getHorizontalSize(24.00),
                      margin:
                          getMargin(left: 204, top: 11, right: 20, bottom: 16),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        AppbarImage(
                            height: getVerticalSize(16.00),
                            width: getHorizontalSize(4.00),
                            svgPath: ImageConstant.imgMoreicon,
                            margin: getMargin(left: 20, bottom: 12)),
                        AppbarImage(
                            height: getSize(24.00),
                            width: getSize(24.00),
                            svgPath: ImageConstant.imgIconlylightouGray700,
                            margin: getMargin(top: 4))
                      ]))
                ]),
            body: Padding(
                padding: getPadding(left: 20, top: 27, right: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(right: 1),
                          decoration: AppDecoration.fillBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomButton(
                                    height: 46, width: 104, text: "lbl_all".tr),
                                Padding(
                                    padding: getPadding(top: 15, bottom: 13),
                                    child: Text("lbl_group".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.89)))),
                                Padding(
                                    padding: getPadding(
                                        top: 14, right: 42, bottom: 14),
                                    child: Text("lbl_private".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14
                                            .copyWith(
                                                height: getVerticalSize(1.89))))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 31),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(24.00));
                              },
                              itemCount: controller
                                  .messageModelObj.value.messageItemList.length,
                              itemBuilder: (context, index) {
                                MessageItemModel model = controller
                                    .messageModelObj
                                    .value
                                    .messageItemList[index];
                                return MessageItemWidget(model,
                                    onTapChat: onTapChat);
                              })))
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 55,
                width: 55,
                child: CustomImageView(
                    svgPath: ImageConstant.imgAddchatbutton,
                    height: getVerticalSize(27.50),
                    width: getHorizontalSize(27.50)))));
  }

  onTapChat() {
// TODO: implement Actions
  }
}
