import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';

class SettingsScreen extends GetWidget<SettingsController> {
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
                              margin: getMargin(top: 17, bottom: 2),
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
                                                          left: 159,
                                                          right: 150),
                                                      child: Text(
                                                          "lbl_settings".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanSemiBold20
                                                              .copyWith()))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapRowarrowright();
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 36),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 2,
                                                                        top: 4,
                                                                        bottom:
                                                                            4),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgTicket,
                                                                          height: getSize(
                                                                              20.00),
                                                                          width:
                                                                              getSize(20.00)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  10,
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_invoice".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtOpenSansRomanSemiBold18Bluegray900.copyWith(height: 1.00)))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9,
                                                                        bottom:
                                                                            9),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getVerticalSize(
                                                                            10.00),
                                                                    width: getHorizontalSize(
                                                                        6.00)))
                                                          ]))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapRowarrowrightone();
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 36),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 5,
                                                                        bottom:
                                                                            5),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  1),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgUser17X21,
                                                                              height: getVerticalSize(17.00),
                                                                              width: getHorizontalSize(21.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9),
                                                                          child: Text(
                                                                              "lbl_team".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtOpenSansRomanSemiBold18Bluegray900.copyWith(height: 1.00)))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9,
                                                                        bottom:
                                                                            9),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getVerticalSize(
                                                                            10.00),
                                                                    width: getHorizontalSize(
                                                                        6.00)))
                                                          ]))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapRowarrowrighttwo();
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 36),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 5,
                                                                        bottom:
                                                                            5),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgLock,
                                                                              height: getVerticalSize(17.00),
                                                                              width: getHorizontalSize(22.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_permissions".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtOpenSansRomanSemiBold18Bluegray900.copyWith(height: 1.00)))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9,
                                                                        bottom:
                                                                            9),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getVerticalSize(
                                                                            10.00),
                                                                    width: getHorizontalSize(
                                                                        6.00)))
                                                          ]))),
                                              Padding(
                                                  padding: getPadding(top: 36),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4,
                                                                top: 4,
                                                                bottom: 4),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgNotification,
                                                                      height: getVerticalSize(
                                                                          19.00),
                                                                      width: getHorizontalSize(
                                                                          16.00)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              12,
                                                                          top:
                                                                              1,
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_notifications"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtOpenSansRomanSemiBold18Bluegray900
                                                                              .copyWith(height: 1.00)))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        6.00)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 36),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 3,
                                                                top: 4,
                                                                bottom: 3),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector,
                                                                          height: getVerticalSize(
                                                                              20.00),
                                                                          width:
                                                                              getHorizontalSize(19.00))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              9,
                                                                          top:
                                                                              3),
                                                                      child: Text(
                                                                          "lbl_language"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtOpenSansRomanSemiBold18Bluegray900
                                                                              .copyWith(height: 1.00)))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        6.00)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 36),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 4,
                                                                bottom: 4),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVector19X20,
                                                                      height: getVerticalSize(
                                                                          19.00),
                                                                      width: getHorizontalSize(
                                                                          20.00)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              9,
                                                                          top:
                                                                              1,
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_dark_mode"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtOpenSansRomanSemiBold18Bluegray900
                                                                              .copyWith(height: 1.00)))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        6.00)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 36),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 4,
                                                                bottom: 3),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgQuestion,
                                                                          height: getSize(
                                                                              20.00),
                                                                          width:
                                                                              getSize(20.00))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              10,
                                                                          top:
                                                                              2),
                                                                      child: Text(
                                                                          "msg_help_and_feedba"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtOpenSansRomanSemiBold18Bluegray900
                                                                              .copyWith(height: 1.00)))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        6.00)))
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
                                            onTapColumnminimize();
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
                                                                    .imgMinimize,
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
                                                                    .txtOpenSansRomanSemiBold14Bluegray500
                                                                    .copyWith())))
                                                  ]))),
                                      GestureDetector(
                                          onTap: () {
                                            onTapColumnuserone();
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
                            Container(
                                margin: getMargin(top: 2),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 13, right: 13),
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgSettings26X26,
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
                                                      .txtOpenSansRomanSemiBold14DeeppurpleA200
                                                      .copyWith())))
                                    ]))
                          ])))
            ])));
  }
 onTapRowarrowright() async {
    var url = 'https://app.terraform.io/app/${Get.find<PrefUtils>().getOrganizationId()}/settings/billing';
    if (!await launch(url)) {
      throw 'msg_not_found'.tr;
    }
  }

  void onTapRowarrowrightone() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "coming soon");   
  }

  void _onFetchTeamsSuccess() {
    Get.find<PrefUtils>().setTeamData(controller.getTeamsResp.data!);
    controller.callFetchTeamGGtyQzYZaw8UdjkN(
      successCall: _onFetchTeamGGtyQzYZaw8UdjkNSuccess,
      errCall: _onFetchTeamGGtyQzYZaw8UdjkNError,
    );
  }

  void _onFetchTeamGGtyQzYZaw8UdjkNSuccess() {
    Get.find<PrefUtils>().setTeamName(controller
        .getTeamGGtyQzYZaw8UdjkNResp.data!.attributes!.name!
        .toString());
    Get.find<PrefUtils>().setTeamCount(
        controller.getTeamGGtyQzYZaw8UdjkNResp.data!.attributes!.usersCount!);
  }

  void _onFetchTeamGGtyQzYZaw8UdjkNError() {}
  void _onFetchTeamsError() {}
  onTapRowarrowrighttwo() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "coming soon");
  }

  onTapColumnminimize() {
    Get.offAndToNamed(AppRoutes.dashboardScreen);
  }

  onTapColumnuserone() {
    Get.offAndToNamed(AppRoutes.userProfileScreen);
  }
}
