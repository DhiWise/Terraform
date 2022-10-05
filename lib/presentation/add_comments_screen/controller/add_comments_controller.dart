import 'dart:convert';

import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/add_comments_screen/models/add_comments_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/comments/post_comments_resp.dart';
import 'package:terraform/data/apiClient/api_client.dart';

class AddCommentsController extends GetxController {
  TextEditingController inputFieldController5 = TextEditingController();

  TextEditingController inputFieldOneController4 = TextEditingController();

  Rx<AddCommentsModel> addCommentsModelObj = AddCommentsModel().obs;

  PostCommentsResp postCommentsResp = PostCommentsResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController5.dispose();
    inputFieldOneController4.dispose();
  }

  void callCreateComments(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createComments(
        headers: {
          'content-type': 'application/vnd.api+json',
          'Authorization': 'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onCreateCommentsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCommentsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateCommentsSuccess(var response) {
    Map<String, dynamic> value = jsonDecode(response);
    postCommentsResp = PostCommentsResp.fromJson(value);
  }

  void onCreateCommentsError(var err) {
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
