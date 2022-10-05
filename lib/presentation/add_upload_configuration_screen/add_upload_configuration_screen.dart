import 'package:terraform/core/constants/WorkspaceConstant.dart';
import 'dart:io';
import 'controller/add_upload_configuration_controller.dart';
import 'package:flutter/material.dart';
import 'package:terraform/core/app_export.dart';
import 'package:terraform/widgets/custom_button.dart';
import 'package:terraform/widgets/custom_text_form_field.dart';
import 'package:terraform/data/models/configurationVersions/post_configuration_versions_req.dart';
import 'package:terraform/core/constants/ConfigurationConstant.dart';
import 'package:terraform/data/models/v2Runs/post_v2_runs_req.dart' as run;
import 'package:terraform/core/constants/RunConstant.dart';
import 'package:terraform/core/utils/file_upload_helper.dart';
import 'package:terraform/data/models/formData/post_form_data_req.dart';
import 'package:http_parser/http_parser.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddUploadConfigurationScreen
    extends GetWidget<AddUploadConfigurationController> {
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
                              margin: getMargin(top: 16),
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
                                                          left: 132,
                                                          right: 131),
                                                      child: Text(
                                                          "lbl_configuration"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanSemiBold20
                                                              .copyWith()))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 41, right: 10),
                                                  child: Text(
                                                      "msg_add_configurati2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansRomanSemiBold18
                                                          .copyWith())),
                                              CustomButton(
                                                  width: 396,
                                                  text: "msg_add_configuration"
                                                      .tr,
                                                  margin: getMargin(top: 24),
                                                  onTap:
                                                      onTapBtnCreateorganiza),
                                              Container(
                                                  margin: getMargin(top: 69),
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
                                                        Padding(
                                                            padding: getPadding(
                                                                right: 10),
                                                            child: Text(
                                                                "msg_upload_configur"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanSemiBold18
                                                                    .copyWith())),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 24),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment.center,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                mainAxisSize: MainAxisSize.max,
                                                                children: [
                                                                  CustomButton(
                                                                      width:
                                                                          194,
                                                                      text: "lbl_upload"
                                                                          .tr,
                                                                      onTap:
                                                                          onTapBtnUpload)
                                                                ]))
                                                      ])),
                                            ])),
                                    Container(
                                        margin: getMargin(
                                            left: 16, right: 16, top: 20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(right: 10),
                                                  child: Text("msg_run_task".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansRomanSemiBold18
                                                          .copyWith())),
                                              Container(
                                                  width: double.infinity,
                                                  margin: getMargin(top: 16),
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
                                                        CustomTextFormField(
                                                            width: 395,
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .inputFieldController4,
                                                            hintText:
                                                                "lbl_run_comments"
                                                                    .tr,
                                                            margin: getMargin(
                                                                left: 1,
                                                                top: 6),
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            alignment: Alignment
                                                                .center),
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 24),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        CustomButton(
                                                            width: 194,
                                                            text: "lbl_run".tr,
                                                            variant: ButtonVariant
                                                                .FillDeeppurple50,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .OpenSansRomanSemiBold18DeeppurpleA200,
                                                            onTap: onTapBtnRun),
                                                      ]))
                                            ])),
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

  void onTapBtnCreateorganiza() {
    PostConfigurationVersionsReq postConfigurationVersionsReq =
        PostConfigurationVersionsReq(
      data: Data(
        type: ConfigurationConstant.type,
      ),
    );
    controller.callCreateConfigurationVersions(
      postConfigurationVersionsReq.toJson(),
      successCall: _onCreateConfigurationVersionsSuccess,
      errCall: _onCreateConfigurationVersionsError,
    );
  }

  void _onCreateConfigurationVersionsSuccess() {
    Get.find<PrefUtils>().setConfigurationURL(controller
        .postConfigurationVersionsResp.data!.attributes!.uploadUrl!
        .toString());
    Get.find<PrefUtils>().setConfigurationId(
        controller.postConfigurationVersionsResp.data!.id!.toString());
  }

  void _onCreateConfigurationVersionsError() {}
  void onTapBtnRun() {
    run.PostV2RunsReq postV2RunsReq = run.PostV2RunsReq(
      data: run.Data(
        attributes:
            run.Attributes(message: controller.inputFieldController4.text),
        type: RunConstant.type,
        relationships: run.Relationships(
          workspace: run.Workspace(
              data: run.Data(
                  type: WorkspaceConstant.type,
                  id: Get.find<PrefUtils>().getWorkspaceId())),
          configurationVersion: run.ConfigurationVersion(
            data: run.Data(
              type: ConfigurationConstant.type,
              id: Get.find<PrefUtils>().getConfigurationId(),
            ),
          ),
        ),
      ),
    );
    controller.callCreateV2Runs(
      postV2RunsReq.toJson(),
      successCall: _onCreateV2RunsSuccess,
      errCall: _onCreateV2RunsError,
    );
  }

  void _onCreateV2RunsSuccess() {
    Get.find<PrefUtils>()
        .setRunId(controller.postV2RunsResp.data!.id!.toString());
    Get.offAndToNamed(AppRoutes.featuresScreen);
  }

  void _onCreateV2RunsError() {}
  onTapBtnUpload() async {
    List<String?> fileList = [];
    await FileManager().filePickerMethod(5 * 1000000, ["tf"],
        getFiles: (list) async {
      fileList = list;
    });

    final formData = FormData({});
    if (fileList.isNotEmpty) {
      for (var item in fileList) {
        formData.files.addAll([
          MapEntry(
            'file',
            MultipartFile(
              await File(item!).readAsBytes(),
              filename: item.split('/').last,
            ),
          ),
        ]);
      }
    }

    controller.callCreateFormData(
      formData,
      successCall: _onCreateFormDataSuccess,
      errCall: _onCreateFormDataError,
    );
  }

  void _onCreateFormDataSuccess() {
    Fluttertoast.showToast(
      msg: "Sucessfully Updated",
    );
  }

  void _onCreateFormDataError() {
    Fluttertoast.showToast(
      msg: "Failed !",
    );
  }

  onTapColumngrid() {
    Get.offNamed(AppRoutes.dashboardScreen);
  }

  onTapColumnuser() {
    Get.offAndToNamed(AppRoutes.userProfileScreen);
  }

  onTapColumnsettings() {
    Get.offAndToNamed(AppRoutes.settingsScreen);
  }
}
