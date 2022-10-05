import 'dart:convert';

import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/user_profile_screen/models/user_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/userHVo9VBy1qowWxwXJ/get_user.dart';
import 'package:terraform/data/apiClient/api_client.dart';

class UserProfileController extends GetxController {
  TextEditingController inputFieldController2 = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController inputFieldOneController2 = TextEditingController();

  Rx<UserProfileModel> userProfileModelObj = UserProfileModel().obs;

  GetUserHVo9VBy1qowWxwXJResp getUserHVo9VBy1qowWxwXJResp =
      GetUserHVo9VBy1qowWxwXJResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchUserHVo9VBy1qowWxwXJ(
      successCall: _onFetchUserHVo9VBy1qowWxwXJSuccess,
      errCall: _onFetchUserHVo9VBy1qowWxwXJError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController2.dispose();
    emailController.dispose();
    inputFieldOneController2.dispose();
  }

  void callFetchUserHVo9VBy1qowWxwXJ(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchUserHVo9VBy1qowWxwXJ(
        headers: {
          'Authorization':
              'Bearer ${TerraformConstant.token}',
          'Content-Type': 'application/vnd.api+json',
        },
        onSuccess: (resp) {
          onFetchUserHVo9VBy1qowWxwXJSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchUserHVo9VBy1qowWxwXJError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchUserHVo9VBy1qowWxwXJSuccess(var response) {
    Map<String, dynamic> value = jsonDecode(response);
    getUserHVo9VBy1qowWxwXJResp = GetUserHVo9VBy1qowWxwXJResp.fromJson(value);
  }

  void onFetchUserHVo9VBy1qowWxwXJError(var err) {
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

  void _onFetchUserHVo9VBy1qowWxwXJSuccess() {
    userProfileModelObj.value.michelleRockTxt.value =
        getUserHVo9VBy1qowWxwXJResp.data!.attributes!.username!.toString()!=null?getUserHVo9VBy1qowWxwXJResp.data!.attributes!.username!.toString():'assets/images/img_ellipse5.png';
    userProfileModelObj.value.ellipseFiveImg.value =
        getUserHVo9VBy1qowWxwXJResp.data!.attributes!.avatarUrl!.toString();
  }

  void _onFetchUserHVo9VBy1qowWxwXJError() {}
}
