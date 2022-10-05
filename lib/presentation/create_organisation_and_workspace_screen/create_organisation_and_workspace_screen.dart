import 'controller/create_organisation_and_workspace_controller.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';
import 'package:terraform/core/utils/validation_functions.dart';
import 'package:terraform/widgets/custom_button.dart';
import 'package:terraform/widgets/custom_text_form_field.dart';
import 'package:terraform/data/models/organizations/post_organizations_req.dart';
import 'package:terraform/data/models/workspaces/post_workspaces_req.dart'
    as workspace;
import 'package:terraform/core/constants/WorkspaceConstant.dart';

// ignore_for_file: must_be_immutable
class CreateOrganisationAndWorkspaceScreen
    extends GetWidget<CreateOrganisationAndWorkspaceController> {
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
                                  margin: getMargin(top: 17),
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
                                                              left: 16,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_organization_create_and_workspace"
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
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 41, right: 10),
                                                      child: Text(
                                                          "msg_create_organisa"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanSemiBold18
                                                              .copyWith())),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 21,
                                                          right: 10),
                                                      child: Text("lbl_name".tr,
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
                                                          .inputFieldController3,
                                                      hintText:
                                                          "msg_enter_organizat"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 1, top: 8),
                                                      alignment:
                                                          Alignment.center,
                                                      validator: (value) {
                                                        if (!isText(value)) {
                                                          return "Please enter valid text";
                                                        }
                                                        return null;
                                                      }),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 21,
                                                          right: 10),
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
                                                      width: 395,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .inputFieldOneController3,
                                                      hintText:
                                                          "msg_enter_your_emai"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 1, top: 8),
                                                      alignment:
                                                          Alignment.center,
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
                                                  CustomButton(
                                                      width: 396,
                                                      text:
                                                          "msg_create_organiza"
                                                              .tr,
                                                      margin:
                                                          getMargin(top: 24),
                                                      onTap:
                                                          onTapBtnCreateorganiza),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 69, right: 10),
                                                      child: Text(
                                                          "msg_create_workspac"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanSemiBold18
                                                              .copyWith())),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 21,
                                                          right: 10),
                                                      child: Text("lbl_name".tr,
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
                                                          .inputFieldTwoController1,
                                                      hintText:
                                                          "msg_enter_workspace"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 1, top: 8),
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      alignment:
                                                          Alignment.center,
                                                      validator: (value) {
                                                        if (!isText(value)) {
                                                          return "Please enter valid text";
                                                        }
                                                        return null;
                                                      }),
                                                  CustomButton(
                                                      width: 396,
                                                      text:
                                                          "msg_create_workspace"
                                                              .tr,
                                                      margin:
                                                          getMargin(top: 24),
                                                      onTap:
                                                          onTapBtnCreateorganiza1)
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

  void onTapBtnCreateorganiza() {
    PostOrganizationsReq postOrganizationsReq = PostOrganizationsReq(
      data: Data(
        attributes: Attributes(
          name: controller.inputFieldController3.text,
          email: controller.inputFieldOneController3.text,
        ),
      ),
    );
    controller.callCreateOrganizations(
      postOrganizationsReq.toJson(),
      successCall: _onCreateOrganizationsSuccess,
      errCall: _onCreateOrganizationsError,
    );
  }

  void _onCreateOrganizationsSuccess() {}

  void _onCreateOrganizationsError() {}
  void onTapBtnCreateorganiza1() {
    workspace.PostWorkspacesReq postWorkspacesReq = workspace.PostWorkspacesReq(
      data: workspace.Data(
        attributes: workspace.Attributes(
          name: controller.inputFieldTwoController1.text,
          resourceCount: WorkspaceConstant.resoucecount,
          updatedAt: WorkspaceConstant.updatedat,
        ),
        type: WorkspaceConstant.type,
      ),
    );
    controller.callCreateWorkspaces(
      postWorkspacesReq.toJson(),
      successCall: _onCreateWorkspacesSuccess,
      errCall: _onCreateWorkspacesError,
    );
  }

  void _onCreateWorkspacesSuccess() {
    Get.find<PrefUtils>()
        .setWorkspaceId(controller.postWorkspacesResp.data!.id!.toString());
    Get.offAndToNamed(AppRoutes.featuresScreen);
  }

  void _onCreateWorkspacesError() {}
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
