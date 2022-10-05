import '../list_of_comments_screen/widgets/listjeromebell_item_widget.dart';
import 'controller/list_of_comments_controller.dart';
import 'models/listjeromebell_item_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';
import 'package:terraform/widgets/custom_search_view.dart';

class ListOfCommentsScreen extends GetWidget<ListOfCommentsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              margin: getMargin(top: 14),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        margin: getMargin(right: 16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(right: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_comments"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanSemiBold20
                                                                    .copyWith())),
                                                         GestureDetector(
                                                            onTap: () {
                                                              onTapTxtCancel();
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            93,
                                                                        top: 4),
                                                                child: Text(
                                                                    "lbl_add_comments2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOpenSansRomanSemiBold16Red700
                                                                        .copyWith())))
                                                      ])),
                                             
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 48),
                                                      child: Obx(() =>
                                                          ListView.separated(
                                                              physics:
                                                                  BouncingScrollPhysics(),
                                                              shrinkWrap: true,
                                                              separatorBuilder:
                                                                  (context,
                                                                      index) {
                                                                return Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        396.00),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray100));
                                                              },
                                                              itemCount: controller
                                                                  .listOfCommentsModelObj
                                                                  .value
                                                                  .listjeromebellItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                ListjeromebellItemModel
                                                                    model =
                                                                    controller
                                                                        .listOfCommentsModelObj
                                                                        .value
                                                                        .listjeromebellItemList[index];
                                                                return ListjeromebellItemWidget(
                                                                    model);
                                                              }))))
                                            ]))
                                  ]))))),
              Container(
                  decoration:
                      BoxDecoration(color: ColorConstant.whiteA700, boxShadow: [
                    BoxShadow(
                        color: ColorConstant.gray70011,
                        spreadRadius: getHorizontalSize(2.00),
                        blurRadius: getHorizontalSize(2.00),
                        offset: Offset(0, 0))
                  ]),
                  child: Padding(
                      padding: getPadding(top: 8, bottom: 14),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(top: 2, bottom: 1),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            onTapColumngrid();
                                          },
                                          child: Container(
                                              margin: getMargin(
                                                 top: 1, bottom: 1),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 22,
                                                            right: 22),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgGrid,
                                                            height:
                                                                getSize(26.00),
                                                            width: getSize(
                                                                26.00))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Text(
                                                                "lbl_dashboard"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanSemiBold14DeeppurpleA200
                                                                    .copyWith())))
                                                  ]))),
                                      GestureDetector(
                                          onTap: () {
                                            onTapColumnuser();
                                          },
                                          child: Container(
                                              margin: getMargin(left: 56),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                right: 2),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgUser,
                                                                height: getSize(
                                                                    26.00),
                                                                width: getSize(
                                                                    26.00)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 9),
                                                        child: Text(
                                                            "lbl_user".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOpenSansRomanSemiBold14Bluegray500
                                                                .copyWith()))
                                                  ])))
                                    ])),
                            GestureDetector(
                                onTap: () {
                                  onTapColumnsettings();
                                },
                                child: Container(
                                    margin: getMargin(top: 2),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 12, right: 12),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgSettings,
                                                  height: getSize(26.00),
                                                  width: getSize(26.00))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 11),
                                                  child: Text("lbl_settings".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansRomanSemiBold14Bluegray500
                                                          .copyWith())))
                                        ])))
                          ])))
            ])));
  }

  onTapColumngrid() {
    Get.offAndToNamed(AppRoutes.dashboardScreen);
  }

  onTapColumnuser() {
    Get.offAndToNamed(AppRoutes.userProfileScreen);
  }

  onTapColumnsettings() {
    Get.offAndToNamed(AppRoutes.settingsScreen);
  }
    onTapTxtCancel() {
    Get.offAndToNamed(AppRoutes.addCommentsScreen);
  }
}
