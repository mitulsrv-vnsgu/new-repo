import '../message_history_page/widgets/listpexelscedricf_item_widget.dart';
import 'controller/message_history_controller.dart';
import 'models/listpexelscedricf_item_model.dart';
import 'models/message_history_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MessageHistoryPage extends StatelessWidget {
  MessageHistoryController controller =
      Get.put(MessageHistoryController(MessageHistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller
                .messageHistoryModelObj.value.listpexelscedricfItemList.length,
            itemBuilder: (context, index) {
              ListpexelscedricfItemModel model = controller
                  .messageHistoryModelObj
                  .value
                  .listpexelscedricfItemList[index];
              return ListpexelscedricfItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
