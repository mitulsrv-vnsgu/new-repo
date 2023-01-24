import '../schedule_page/widgets/schedule_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: AppbarTitle(
            text: "Schedule",
            margin: getMargin(
              left: 21,
            ),
          ),
          actions: [
            Container(
              height: getVerticalSize(
                27.00,
              ),
              width: getHorizontalSize(
                24.00,
              ),
              margin: getMargin(
                left: 201,
                top: 12,
                right: 20,
                bottom: 16,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AppbarImage(
                    height: getVerticalSize(
                      16.00,
                    ),
                    width: getHorizontalSize(
                      4.00,
                    ),
                    svgPath: ImageConstant.imgMoreicon,
                    margin: getMargin(
                      left: 20,
                      bottom: 11,
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
                      top: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: getPadding(
            left: 20,
            top: 28,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: AppDecoration.fillBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomButton(
                      height: 46,
                      width: 104,
                      text: "Upcoming",
                    ),
                    Padding(
                      padding: getPadding(
                        top: 15,
                        bottom: 13,
                      ),
                      child: Text(
                        "Completed",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular14.copyWith(
                          height: getVerticalSize(
                            1.89,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 14,
                        right: 24,
                        bottom: 14,
                      ),
                      child: Text(
                        "Canceled",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular14.copyWith(
                          height: getVerticalSize(
                            1.89,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        20.00,
                      ),
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ScheduleItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
