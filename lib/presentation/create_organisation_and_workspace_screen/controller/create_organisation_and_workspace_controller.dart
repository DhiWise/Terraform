import 'dart:convert';

import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/create_organisation_and_workspace_screen/models/create_organisation_and_workspace_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/organizations/post_organizations_resp.dart';
import 'package:terraform/data/apiClient/api_client.dart';
import 'package:terraform/data/models/workspaces/post_workspaces_resp.dart';

class CreateOrganisationAndWorkspaceController extends GetxController {
  TextEditingController inputFieldController3 = TextEditingController();

  TextEditingController inputFieldOneController3 = TextEditingController();

  TextEditingController inputFieldTwoController1 = TextEditingController();

  Rx<CreateOrganisationAndWorkspaceModel>
      createOrganisationAndWorkspaceModelObj =
      CreateOrganisationAndWorkspaceModel().obs;

  PostOrganizationsResp postOrganizationsResp = PostOrganizationsResp();

  PostWorkspacesResp postWorkspacesResp = PostWorkspacesResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController3.dispose();
    inputFieldOneController3.dispose();
    inputFieldTwoController1.dispose();
  }

  void callCreateOrganizations(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createOrganizations(
        headers: {
          'content-type': 'application/vnd.api+json',
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onCreateOrganizationsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateOrganizationsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateOrganizationsSuccess(var response) {
    Map<String,dynamic> value=jsonDecode(response);
    postOrganizationsResp = PostOrganizationsResp.fromJson(value);
    Get.find<PrefUtils>().setOrganizationId(postOrganizationsResp.data!.id!.toString());
  }

  void onCreateOrganizationsError(var err) {
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

  void callCreateWorkspaces(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createWorkspaces(
        headers: {
          'content-type': 'application/vnd.api+json',
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onCreateWorkspacesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateWorkspacesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateWorkspacesSuccess(var response) {
    Map<String,dynamic> value=jsonDecode(response);
    postWorkspacesResp = PostWorkspacesResp.fromJson(value);
  }

  void onCreateWorkspacesError(var err) {
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
