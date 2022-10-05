import '../../core/utils/validation_functions.dart';
import 'controller/discard_run_controller.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';
import 'package:terraform/widgets/custom_button.dart';
import 'package:terraform/widgets/custom_text_form_field.dart';
import 'package:terraform/data/models/cancel/post_cancel_req.dart';
import 'package:terraform/data/models/notifications/post_notifications_req.dart';
import 'package:terraform/core/constants/SMSConstant.dart';

class DiscardRunScreen extends GetWidget<DiscardRunController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(children: [
                  Expanded(
                      child: Container(
                          width: size.width,
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: getMargin(top: 14),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            margin:
                                                getMargin(left: 16, right: 16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
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
                                                              right: 13),
                                                          child: Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  onTapBack();
                                                                },
                                                                child: Container(
                                                                    padding: getPadding(
                                                                        right:
                                                                            1),
                                                                    child: Icon(
                                                                        Icons
                                                                            .arrow_back)),
                                                              ),
                                                              Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_add_comments_run"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOpenSansRomanSemiBold20
                                                                        .copyWith()),
                                                              ),
                                                            ],
                                                          ))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 45,
                                                          right: 10),
                                                      child: Text(
                                                          "lbl_enter_comments"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanRegular18
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  CustomTextFormField(
                                                      width: 395,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .inputFieldController6,
                                                      hintText:
                                                          "lbl_enter_comment"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 1, top: 8),
                                                      alignment:
                                                          Alignment.center,
                                                      validator: (value) {
                                                        if (!isText(value)) {
                                                          return "msg_text".tr;
                                                        }
                                                        return null;
                                                      }),
                                                  CustomButton(
                                                      width: 396,
                                                      text:
                                                          "lbl_make_comment".tr,
                                                      margin:
                                                          getMargin(top: 24),
                                                      onTap:
                                                          onTapBtnMakecomment)
                                                ]))
                                      ]))))),
                  Container(
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          boxShadow: [
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
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 22,
                                                                right: 22),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGrid,
                                                                height: getSize(
                                                                    26.00),
                                                                width: getSize(
                                                                    26.00))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        right:
                                                                            2),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUser,
                                                                    height:
                                                                        getSize(
                                                                            26.00),
                                                                    width: getSize(
                                                                        26.00)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Text(
                                                                "lbl_user".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
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
                                                      svgPath: ImageConstant
                                                          .imgSettings,
                                                      height: getSize(26.00),
                                                      width: getSize(26.00))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 11),
                                                      child: Text(
                                                          "lbl_settings".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanSemiBold14Bluegray500
                                                              .copyWith())))
                                            ])))
                              ])))
                ]))));
  }

  void onTapBtnMakecomment() {
    PostCancelReq postCancelReq = PostCancelReq(
      comment: controller.inputFieldController6.text,
    );
    controller.callCreateCancel(
      postCancelReq.toJson(),
      successCall: _onCreateCancelSuccess,
      errCall: _onCreateCancelError,
    );
  }

  void _onCreateCancelSuccess() {
    PostNotificationsReq postNotificationsReq = PostNotificationsReq(
      contents: Contents(
        en: SMSConstant.en,
      ),
      appId: SMSConstant.appid,
      includedSegments: SMSConstant.segment,
      name: SMSConstant.name,
      smsFrom: SMSConstant.smsFrom,
    );
    controller.callCreateNotifications(
      postNotificationsReq.toJson(),
      successCall: _onCreateNotificationsSuccess,
      errCall: _onCreateNotificationsError,
    );
  }

  void _onCreateNotificationsSuccess() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "successfully send SMS");
    Get.offAndToNamed(AppRoutes.featuresScreen);
  }

  void _onCreateNotificationsError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "failed to send SMS");
  }

  void _onCreateCancelError() {}
  onTapColumngrid() {
    Get.offAndToNamed(AppRoutes.dashboardScreen);
  }

  onTapColumnuser() {
    Get.offAndToNamed(AppRoutes.userProfileScreen);
  }

  onTapColumnsettings() {
    Get.offAndToNamed(AppRoutes.settingsScreen);
  }

  onTapBack() {
    Get.toNamed(AppRoutes.listOfRunsScreen);
  }
}
