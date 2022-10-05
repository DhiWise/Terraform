import '../../../core/constants/SMSConstant.dart';
import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/discard_run_screen/models/discard_run_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/cancel/post_cancel_resp.dart';
import 'package:terraform/data/apiClient/api_client.dart';
import 'package:terraform/data/models/notifications/post_notifications_resp.dart';

class DiscardRunController extends GetxController {
  TextEditingController inputFieldController6 = TextEditingController();

  TextEditingController inputFieldOneController5 = TextEditingController();

  Rx<DiscardRunModel> discardRunModelObj = DiscardRunModel().obs;

  PostCancelResp postCancelResp = PostCancelResp();

  PostNotificationsResp postNotificationsResp = PostNotificationsResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController6.dispose();
    inputFieldOneController5.dispose();
  }

  void callCreateCancel(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createCancel(
        headers: {
          'content-type': 'application/vnd.api+json',
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onCreateCancelSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCancelError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateCancelSuccess(var response) {
    //postCancelResp = PostCancelResp.fromJson(response);
  }

  void onCreateCancelError(var err) {
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

  void callCreateNotifications(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createNotifications(
        headers: {
          'Content-type': 'application/json',
          'Authorization':
              'Basic ${SMSConstant.token}',
        },
        onSuccess: (resp) {
          onCreateNotificationsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateNotificationsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateNotificationsSuccess(var response) {
    postNotificationsResp = PostNotificationsResp.fromJson(response);
  }

  void onCreateNotificationsError(var err) {
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
