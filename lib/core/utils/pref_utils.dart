import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:terraform/data/models/teams/get_teams_resp.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setOrganizationId(String value) {
    return _sharedPreferences!.setString('organizationId', value);
  }

  String getOrganizationId() {
    try {
      return _sharedPreferences!.getString('organizationId') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setWorkspaceId(String value) {
    return _sharedPreferences!.setString('workspaceId', value);
  }

  String getWorkspaceId() {
    try {
      return _sharedPreferences!.getString('workspaceId') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setCommentId(String value) {
    return _sharedPreferences!.setString('commentId', value);
  }

  String getCommentId() {
    try {
      return _sharedPreferences!.getString('commentId') ?? '';
    } catch (e) {
      return '';
    }
  }
   Future<void> setConfigurationURL(String value) {
    return _sharedPreferences!.setString('ConfigurationURL', value);
  }

  String getConfigurationURL() {
    try {
      return _sharedPreferences!.getString('ConfigurationURL') ?? '';
    } catch (e) {
      return '';
    }
  }
   Future<void> setConfigurationId(String value) {
    return _sharedPreferences!.setString('ConfigurationId', value);
  }

  String getConfigurationId() {
    try {
      return _sharedPreferences!.getString('ConfigurationId') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setRunId(String value) {
    return _sharedPreferences!.setString('RunId', value);
  }

  String getRunId() {
    try {
      return _sharedPreferences!.getString('RunId') ?? '';
    } catch (e) {
      return '';
    }
  }
   Future<void> setTeamData(List<Data>? value) {
    return _sharedPreferences!.setString('TeamData', jsonEncode(value));
  }

  List<Data>? getTeamData() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('TeamData') ?? '');
      return (jsonData as List).map((e) => Data.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }

  Future<void> setTeamName(String value) {
    return _sharedPreferences!.setString('TeamName', value);
  }

  String getTeamName() {
    try {
      return _sharedPreferences!.getString('TeamName') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setTeamCount(int value) {
    return _sharedPreferences!.setInt('TeamCount', value);
  }

  int getTeamCount() {
    try {
      return _sharedPreferences!.getInt('TeamCount') ?? 0;
    } catch (e) {
      return 0;
    }
  }

}
