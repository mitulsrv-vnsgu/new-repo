import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';

// ignore: must_be_immutable
class ListtimeItemWidget extends StatelessWidget {
  ListtimeItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: getPadding(
            left: 23,
            top: 10,
            right: 23,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineTeal50.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder10,
          ),
          child: Text(
            "09:00 AM",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Teal50.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          margin: getMargin(
            left: 13,
          ),
          padding: getPadding(
            left: 24,
            top: 10,
            right: 24,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineTeal100.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder10,
          ),
          child: Text(
            "10:00 AM",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Gray700.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          margin: getMargin(
            left: 13,
          ),
          padding: getPadding(
            left: 24,
            top: 10,
            right: 24,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineTeal50.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder10,
          ),
          child: Text(
            "11:00 AM",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Teal50.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
