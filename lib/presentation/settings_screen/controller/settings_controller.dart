import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/settings_screen/models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/teams/get_teams_resp.dart';
import 'package:terraform/data/apiClient/api_client.dart';
import 'package:terraform/data/models/teamGGtyQzYZaw8UdjkNResp/get_team_by_id_resp.dart';

class SettingsController extends GetxController {
  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

  GetTeamsResp getTeamsResp = GetTeamsResp();

  GetTeamGGtyQzYZaw8UdjkNResp getTeamGGtyQzYZaw8UdjkNResp =
      GetTeamGGtyQzYZaw8UdjkNResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchTeams(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchTeams(
        headers: {
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onFetchTeamsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchTeamsError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchTeamsSuccess(var response) {
    getTeamsResp = GetTeamsResp.fromJson(response);
  }

  void onFetchTeamsError(var err) {
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

  void callFetchTeamGGtyQzYZaw8UdjkN(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchTeamGGtyQzYZaw8UdjkN(
        headers: {
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onFetchTeamGGtyQzYZaw8UdjkNSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchTeamGGtyQzYZaw8UdjkNError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchTeamGGtyQzYZaw8UdjkNSuccess(var response) {
    getTeamGGtyQzYZaw8UdjkNResp =
        GetTeamGGtyQzYZaw8UdjkNResp.fromJson(response);
  }

  void onFetchTeamGGtyQzYZaw8UdjkNError(var err) {
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
