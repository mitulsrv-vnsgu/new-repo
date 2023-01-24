import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';

// ignore: must_be_immutable
class ArticleItemWidget extends StatelessWidget {
  ArticleItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail,
            height: getSize(
              59.00,
            ),
            width: getSize(
              59.00,
            ),
            margin: getMargin(
              left: 5,
              top: 5,
              bottom: 6,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 13,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    189.00,
                  ),
                  child: Text(
                    "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold12Gray700.copyWith(
                      height: getVerticalSize(
                        1.10,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
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
                          "Jun 10, 2021 ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium9.copyWith(
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
                          left: 4,
                          top: 4,
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
                          left: 4,
                          bottom: 1,
                        ),
                        child: Text(
                          "5min read",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium9Cyan300.copyWith(
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
          CustomImageView(
            svgPath: ImageConstant.imgIconlyboldbooCyan300,
            height: getSize(
              15.00,
            ),
            width: getSize(
              15.00,
            ),
            margin: getMargin(
              left: 42,
              top: 12,
              right: 12,
              bottom: 43,
            ),
          ),
        ],
      ),
    );
  }
}
