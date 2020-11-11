import 'package:educruise/views/login/login_page.dart';
import 'package:educruise/views/onboarding.dart';
import 'package:educruise/views/splashscreen.dart';
import 'package:educruise/views/volunteer_signup_login.dart';
import 'package:flutter/material.dart';

class RouteNames {
  //Custom class that holds all the named routes as constants for easy reference
  static const String splashScreen = '/';
  static const String onboardingScreen = 'onboardingScreen';
  static const String volunteerSignupLogin = 'volunteerSignupLogin';
  static const String login = 'login';

  //Routes and their respective Pages.
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.splashScreen: (context) => SplashScreen(),
    RouteNames.onboardingScreen: (context) => Onboarding(),
    RouteNames.volunteerSignupLogin: (context) => VolunteerSignupLogin(),
    RouteNames.login: (context) => Login(),
  };
}
