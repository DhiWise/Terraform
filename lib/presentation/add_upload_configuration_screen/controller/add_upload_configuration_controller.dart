import 'dart:convert';

import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/add_upload_configuration_screen/models/add_upload_configuration_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/configurationVersions/post_configuration_versions_resp.dart';
import 'package:terraform/data/apiClient/api_client.dart';
import 'package:terraform/data/models/v2Runs/post_v2_runs_resp.dart';
import 'package:terraform/data/models/formData/post_form_data_resp.dart';

class AddUploadConfigurationController extends GetxController {
  TextEditingController inputFieldController4 = TextEditingController();

  Rx<AddUploadConfigurationModel> addUploadConfigurationModelObj =
      AddUploadConfigurationModel().obs;

  PostConfigurationVersionsResp postConfigurationVersionsResp =
      PostConfigurationVersionsResp();

  PostV2RunsResp postV2RunsResp = PostV2RunsResp();
  PostFormDataResp postFormDataResp = PostFormDataResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController4.dispose();
  }

  void callCreateConfigurationVersions(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createConfigurationVersions(
        headers: {
          'content-type': 'application/vnd.api+json',
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onCreateConfigurationVersionsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateConfigurationVersionsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateConfigurationVersionsSuccess(var response) {
        Map<String,dynamic> value=jsonDecode(response);
    postConfigurationVersionsResp =
        PostConfigurationVersionsResp.fromJson(value);
  }

  void onCreateConfigurationVersionsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void callCreateV2Runs(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createV2Runs(
        headers: {
          'content-type': 'application/vnd.api+json',
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onCreateV2RunsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateV2RunsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateV2RunsSuccess(var response) {
    Map<String,dynamic> value=jsonDecode(response);
    postV2RunsResp = PostV2RunsResp.fromJson(value);
  }

  void onCreateV2RunsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
    void callCreateFormData(FormData formData,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createFormData(
            headers: {
        'content-type': 'application/octet-stream',
        'Authorization':'Bearer ${TerraformConstant.token}',     
      },
        onSuccess: (resp) {
          onCreateFormDataSuccess();
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateFormDataError(err);
          if (errCall != null) {
            errCall();
          }
        },
        formData: formData);
  }

  void onCreateFormDataSuccess() {
    //postFormDataResp = PostFormDataResp.fromJson(response);
  }

  void onCreateFormDataError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

}
