import '../controller/list_of_runs_controller.dart';
import '../models/list_of_runs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';

// ignore: must_be_immutable
class ListOfRunsItemWidget extends StatelessWidget {
  ListOfRunsItemWidget(this.listOfRunsItemModelObj);

  ListOfRunsItemModel listOfRunsItemModelObj;

  var controller = Get.find<ListOfRunsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: getMargin(left: 25, right: 274, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(right: 10, top: 20, bottom: 10),
              child: Obx(
                () => Row(
                  children: [
                    Icon(Icons.task),
                    Container(
                      margin: getMargin(left: 10),
                      child: Text(
                        listOfRunsItemModelObj.jeromeBellTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOpenSansRomanSemiBold16Bluegray900
                            .copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
