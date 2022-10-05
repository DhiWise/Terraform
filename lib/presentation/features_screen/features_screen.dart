import 'controller/features_controller.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';

class FeaturesScreen extends GetWidget<FeaturesController> {
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
                                        margin: getMargin(left: 16, right: 16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 50, right: 50),
                                                      child: Text(
                                                          "lbl_start".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanSemiBold20
                                                              .copyWith()))),
                                              Container(
                                                  width: 500,
                                                  margin: getMargin(top: 50),
                                                  decoration: AppDecoration
                                                      .outlineBluegray50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder6),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxtCreate();
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 20,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            20),
                                                                child: Row(
                                                                  children: [
                                                                    Icon(Icons
                                                                        .workspaces),
                                                                    Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              20),
                                                                      child: Text(
                                                                          "lbl_create"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtOpenSansRomanRegular18
                                                                              .copyWith(height: 1.00)),
                                                                    ),
                                                                  ],
                                                                ))),
                                                      ])),
                                              Container(
                                                  width: 500,
                                                  margin: getMargin(top: 5),
                                                  decoration: AppDecoration
                                                      .outlineBluegray50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder6),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapConfig();
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 20,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            20),
                                                                child: Row(
                                                                  children: [
                                                                    Icon(Icons
                                                                        .add_task),
                                                                    Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              20),
                                                                      child: Text(
                                                                          "lbl_config"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtOpenSansRomanRegular18
                                                                              .copyWith(height: 1.00)),
                                                                    ),
                                                                  ],
                                                                ))),
                                                      ])),
                                              Container(
                                                  width: 500,
                                                  margin: getMargin(top: 5),
                                                  decoration: AppDecoration
                                                      .outlineBluegray50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder6),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxtRun();
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 20,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            20),
                                                                child: Row(
                                                                  children: [
                                                                    Icon(Icons
                                                                        .run_circle),
                                                                    Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              20),
                                                                      child: Text(
                                                                          "lbl_run_list"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtOpenSansRomanRegular18
                                                                              .copyWith(height: 1.00)),
                                                                    ),
                                                                  ],
                                                                ))),
                                                      ])),
                                              Container(
                                                  width: 500,
                                                  margin: getMargin(top: 5),
                                                  decoration: AppDecoration
                                                      .outlineBluegray50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder6),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxtComments();
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 20,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            20),
                                                                child: Row(
                                                                  children: [
                                                                    Icon(Icons
                                                                        .comment),
                                                                    Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              20),
                                                                      child: Text(
                                                                          "lbl_comments"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtOpenSansRomanRegular18
                                                                              .copyWith(height: 1.00)),
                                                                    ),
                                                                  ],
                                                                )))
                                                      ]))
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
                                              margin:
                                                  getMargin(top: 1, bottom: 1),
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

  onTapTxtCreate() {
    Get.offAndToNamed(AppRoutes.createOrganisationAndWorkspaceScreen);
  }

  onTapConfig() {
    Get.offAndToNamed(AppRoutes.selectionScreen);
  }

  onTapTxtRun() {
    Get.offAndToNamed(AppRoutes.listOfRunsScreen);
  }

  onTapTxtComments() {
    Get.offAndToNamed(AppRoutes.listOfCommentsScreen);
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
}
