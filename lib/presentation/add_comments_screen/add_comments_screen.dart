import '../../core/constants/CommentConstant.dart';
import '../../core/utils/validation_functions.dart';
import 'controller/add_comments_controller.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';
import 'package:terraform/widgets/custom_button.dart';
import 'package:terraform/widgets/custom_text_form_field.dart';
import 'package:terraform/data/models/comments/post_comments_req.dart';

class AddCommentsScreen extends GetWidget<AddCommentsController> {
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
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            right: 12),
                                                        child: Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                onTapBack();
                                                              },
                                                              child: Container(
                                                                  padding:
                                                                      getPadding(
                                                                          right:
                                                                              1),
                                                                  child: Icon(Icons
                                                                      .arrow_back)),
                                                            ),
                                                            Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 100),
                                                              child: Text(
                                                                  "lbl_add_comments"
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
                                                      top: 70,
                                                      right: 10),
                                                  child: Text(
                                                      "lbl_enter_comments".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansRomanRegular18
                                                          .copyWith(
                                                              height: 1.00)),
                                                ),
                                                CustomTextFormField(
                                                    width: 395,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .inputFieldController5,
                                                    hintText:
                                                        "lbl_enter_comment".tr,
                                                    margin: getMargin(
                                                        left: 1, top: 8),
                                                    alignment: Alignment.center,
                                                    validator: (value) {
                                                      if (!isText(value)) {
                                                        return "msg_text".tr;
                                                      }
                                                      return null;
                                                    }),
                                                CustomButton(
                                                    width: 396,
                                                    text: "lbl_make_comment".tr,
                                                    margin: getMargin(top: 24),
                                                    onTap: onTapBtnMakecomment)
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
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 1,
                                                                      right: 2),
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
                                                alignment: Alignment.centerLeft,
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
              ]),
            )));
  }

  void onTapBtnMakecomment() {
    PostCommentsReq postCommentsReq = PostCommentsReq(
      data: Data(
        attributes: Attributes(
          body: controller.inputFieldController5.text,
        ),
        type: CommentConstant.type,
      ),
    );
    controller.callCreateComments(
      postCommentsReq.toJson(),
      successCall: _onCreateCommentsSuccess,
      errCall: _onCreateCommentsError,
    );
  }

  void _onCreateCommentsSuccess() {
    Get.find<PrefUtils>()
        .setCommentId(controller.postCommentsResp.data!.id!.toString());
    Get.offAndToNamed(AppRoutes.listOfCommentsScreen);
  }

  void _onCreateCommentsError() {}
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
    Get.toNamed(AppRoutes.listOfCommentsScreen);
  }
}
