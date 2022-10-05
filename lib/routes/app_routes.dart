import 'package:terraform/presentation/splash_screen/splash_screen.dart';
import 'package:terraform/presentation/splash_screen/binding/splash_binding.dart';
import 'package:terraform/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:terraform/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:terraform/presentation/user_profile_screen/user_profile_screen.dart';
import 'package:terraform/presentation/user_profile_screen/binding/user_profile_binding.dart';
import 'package:terraform/presentation/selection_screen/selection_screen.dart';
import 'package:terraform/presentation/selection_screen/binding/selection_binding.dart';
import 'package:terraform/presentation/create_organisation_and_workspace_screen/create_organisation_and_workspace_screen.dart';
import 'package:terraform/presentation/create_organisation_and_workspace_screen/binding/create_organisation_and_workspace_binding.dart';
import 'package:terraform/presentation/add_upload_configuration_screen/add_upload_configuration_screen.dart';
import 'package:terraform/presentation/add_upload_configuration_screen/binding/add_upload_configuration_binding.dart';
import 'package:terraform/presentation/add_comments_screen/add_comments_screen.dart';
import 'package:terraform/presentation/add_comments_screen/binding/add_comments_binding.dart';
import 'package:terraform/presentation/list_of_comments_screen/list_of_comments_screen.dart';
import 'package:terraform/presentation/list_of_comments_screen/binding/list_of_comments_binding.dart';
import 'package:terraform/presentation/text_screen_one_screen/text_screen_one_screen.dart';
import 'package:terraform/presentation/text_screen_one_screen/binding/text_screen_one_binding.dart';
import 'package:terraform/presentation/text_screen_two_screen/text_screen_two_screen.dart';
import 'package:terraform/presentation/text_screen_two_screen/binding/text_screen_two_binding.dart';
import 'package:terraform/presentation/text_screen_three_screen/text_screen_three_screen.dart';
import 'package:terraform/presentation/text_screen_three_screen/binding/text_screen_three_binding.dart';
import 'package:terraform/presentation/text_screen_four_screen/text_screen_four_screen.dart';
import 'package:terraform/presentation/text_screen_four_screen/binding/text_screen_four_binding.dart';
import 'package:terraform/presentation/settings_screen/settings_screen.dart';
import 'package:terraform/presentation/settings_screen/binding/settings_binding.dart';
import 'package:terraform/presentation/list_of_runs_screen/list_of_runs_screen.dart';
import 'package:terraform/presentation/list_of_runs_screen/binding/list_of_runs_binding.dart';
import 'package:terraform/presentation/features_screen/features_screen.dart';
import 'package:terraform/presentation/features_screen/binding/features_binding.dart';
import 'package:terraform/presentation/discard_run_screen/discard_run_screen.dart';
import 'package:terraform/presentation/discard_run_screen/binding/discard_run_binding.dart';
import 'package:terraform/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:terraform/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String loginScreen = '/login_screen';

  static String signUpScreen = '/sign_up_screen';

  static String dashboardScreen = '/dashboard_screen';

  static String userProfileScreen = '/user_profile_screen';

  static String selectionScreen = '/selection_screen';

  static String createOrganisationAndWorkspaceScreen =
      '/create_organisation_and_workspace_screen';

  static String addUploadConfigurationScreen =
      '/add_upload_configuration_screen';

  static String addCommentsScreen = '/add_comments_screen';

  static String listOfCommentsScreen = '/list_of_comments_screen';

  static String textScreenOneScreen = '/text_screen_one_screen';

  static String discardRunScreen = '/discard_run_screen';

  static String textScreenTwoScreen = '/text_screen_two_screen';

  static String textScreenThreeScreen = '/text_screen_three_screen';

  static String textScreenFourScreen = '/text_screen_four_screen';

  static String settingsScreen = '/settings_screen';

  static String listOfRunsScreen = '/list_of_runs_screen';

  static String featuresScreen = '/features_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
   
     GetPage(
      name: discardRunScreen,
      page: () => DiscardRunScreen(),
      bindings: [
        DiscardRunBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: userProfileScreen,
      page: () => UserProfileScreen(),
      bindings: [
        UserProfileBinding(),
      ],
    ),
    GetPage(
      name: selectionScreen,
      page: () => SelectionScreen(),
      bindings: [
        SelectionBinding(),
      ],
    ),
    GetPage(
      name: createOrganisationAndWorkspaceScreen,
      page: () => CreateOrganisationAndWorkspaceScreen(),
      bindings: [
        CreateOrganisationAndWorkspaceBinding(),
      ],
    ),
    GetPage(
      name: addUploadConfigurationScreen,
      page: () => AddUploadConfigurationScreen(),
      bindings: [
        AddUploadConfigurationBinding(),
      ],
    ),
    GetPage(
      name: addCommentsScreen,
      page: () => AddCommentsScreen(),
      bindings: [
        AddCommentsBinding(),
      ],
    ),
    GetPage(
      name: listOfCommentsScreen,
      page: () => ListOfCommentsScreen(),
      bindings: [
        ListOfCommentsBinding(),
      ],
    ),
    GetPage(
      name: textScreenOneScreen,
      page: () => TextScreenOneScreen(),
      bindings: [
        TextScreenOneBinding(),
      ],
    ),
    GetPage(
      name: textScreenTwoScreen,
      page: () => TextScreenTwoScreen(),
      bindings: [
        TextScreenTwoBinding(),
      ],
    ),
    GetPage(
      name: textScreenThreeScreen,
      page: () => TextScreenThreeScreen(),
      bindings: [
        TextScreenThreeBinding(),
      ],
    ),
    GetPage(
      name: textScreenFourScreen,
      page: () => TextScreenFourScreen(),
      bindings: [
        TextScreenFourBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: listOfRunsScreen,
      page: () => ListOfRunsScreen(),
      bindings: [
        ListOfRunsBinding(),
      ],
    ),
    GetPage(
      name: featuresScreen,
      page: () => FeaturesScreen(),
      bindings: [
        FeaturesBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
