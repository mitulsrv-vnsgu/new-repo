import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: getHorizontalSize(
            186.00,
          ),
          child: Text(
            text,
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold24.copyWith(
              height: getVerticalSize(
                1.10,
              ),
              color: ColorConstant.gray700,
            ),
          ),
        ),
      ),
    );
  }
}
