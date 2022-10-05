import '../controller/list_of_comments_controller.dart';
import '../models/listjeromebell_item_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';

// ignore: must_be_immutable
class ListjeromebellItemWidget extends StatelessWidget {
  ListjeromebellItemWidget(this.listjeromebellItemModelObj);

  ListjeromebellItemModel listjeromebellItemModelObj;

  var controller = Get.find<ListOfCommentsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: getMargin(left: 25, right: 100, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(right: 10, top: 10, bottom: 10),
              child: Obx(
                () => Row(
                  children: [
                    Icon(Icons.comment),
                    Container(
                      margin: getMargin(left: 10),
                      child: Text(
                        listjeromebellItemModelObj.jeromeBellTxt.value,
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
