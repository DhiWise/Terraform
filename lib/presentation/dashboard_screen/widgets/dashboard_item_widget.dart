import '../controller/dashboard_controller.dart';
import '../models/dashboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';

// ignore: must_be_immutable
class DashboardItemWidget extends StatelessWidget {
  DashboardItemWidget(this.dashboardItemModelObj);

  DashboardItemModel dashboardItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        left: 0,
        right: 130,
        top:10,
        bottom: 5
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              right: 10,
              top: 10,
              bottom:4
            ),
            child: Obx(
              () => Text(
                dashboardItemModelObj.jeromeBellTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOpenSansRomanSemiBold18.copyWith(
                  height: 1.00,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Obx(
                () => Row(
                  children: [
                    Icon(Icons.person),
                    Container(
                      margin: getMargin(left:5),
                      child: Text(
                        dashboardItemModelObj.emailTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOpenSansRomanSemiBold14.copyWith(
                          height: 2.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
