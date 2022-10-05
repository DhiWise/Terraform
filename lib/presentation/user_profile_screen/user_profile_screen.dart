import 'controller/user_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';
import 'package:terraform/core/utils/validation_functions.dart';
import 'package:terraform/widgets/custom_button.dart';
import 'package:terraform/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UserProfileScreen extends GetWidget<UserProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                          child: Form(
                              key: _formKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Container(
                                  margin: getMargin(top: 16),
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
                                                      alignment: Alignment
                                                          .center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 123,
                                                              right: 123),
                                                          child: Text(
                                                              "lbl_my_profile"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOpenSansRomanSemiBold20
                                                                  .copyWith()))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 123,
                                                              top: 60,
                                                              right: 123),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          75.00)),
                                                              child: Obx(() => CommonImageView(
                                                                  url: controller
                                                                      .userProfileModelObj
                                                                      .value
                                                                      .ellipseFiveImg
                                                                      .value,
                                                                  height: getSize(
                                                                      150.00),
                                                                  width: getSize(
                                                                      150.00)))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 123,
                                                              top: 17,
                                                              right: 123),
                                                          child: Obx(() => Text(
                                                              controller
                                                                  .userProfileModelObj
                                                                  .value
                                                                  .michelleRockTxt
                                                                  .value,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroySemiBold18
                                                                  .copyWith(
                                                                      height:
                                                                          1.00))))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 58, right: 10),
                                                      child: Text(
                                                          "lbl_full_name".tr,
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
                                                      width: 396,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .inputFieldController2,
                                                      hintText: controller
                                                          .userProfileModelObj
                                                          .value
                                                          .michelleRockTxt
                                                          .value,
                                                      margin: getMargin(top: 8),
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .OpenSansRomanSemiBold18),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 21, right: 10),
                                                      child: Text(
                                                          "lbl_email".tr,
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
                                                      width: 396,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .emailController,
                                                      hintText:
                                                          "msg_michellerock_gm"
                                                              .tr,
                                                      margin: getMargin(top: 8),
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .OpenSansRomanSemiBold18,
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidEmail(
                                                                value,
                                                                isRequired:
                                                                    true))) {
                                                          return "Please enter valid email";
                                                        }
                                                        return null;
                                                      }),
                                                  
                                                  
                                                ]))
                                      ])))))),
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
                                      Container(
                                          margin: getMargin(left: 56),
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
                                                            left: 2, right: 3),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgUser26X24,
                                                            height:
                                                                getVerticalSize(
                                                                    26.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    24.00)))),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text("lbl_user".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanSemiBold14DeeppurpleA200
                                                            .copyWith()))
                                              ]))
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

  onTapColumnminimize() {
    Get.offAndToNamed(AppRoutes.dashboardScreen);
  }

  onTapColumnsettings() {
    Get.offAndToNamed(AppRoutes.settingsScreen);
  }
}
