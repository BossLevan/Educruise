import 'package:educruise/views/homepage_for_students/homepage_student.dart';
import 'package:educruise/views/homepage_volunteers/homepage_volunteers.dart';
import 'package:educruise/views/login/login_page.dart';
import 'package:educruise/views/onboarding.dart';
import 'package:educruise/views/report_abuse/confirm_details.dart';
import 'package:educruise/views/report_abuse/report_abuse.dart';
import 'package:educruise/views/signup/sign_up1.dart';
import 'package:educruise/views/signup/sign_up2.dart';
import 'package:educruise/views/signup/sign_up3.dart';
import 'package:educruise/views/signup/sign_up4.dart';
import 'package:educruise/views/splashscreen.dart';
import 'package:educruise/views/thank_you_volunteer.dart';
import 'package:educruise/views/volunteer_signup_login.dart';
import 'package:flutter/material.dart';

class RouteNames {
  //Custom class that holds all the named routes as constants for easy reference
  static const String splashScreen = '/';
  static const String onboardingScreen = 'onboardingScreen';
  static const String volunteerSignupLogin = 'volunteerSignupLogin';
  static const String login = 'login';
  static const String signup1 = 'signup1';
  static const String signup2 = 'signup2';
  static const String signup3 = 'signup3';
  static const String signup4 = 'signup4';
  static const String volunteerThankYou = 'volunteerThankYou';
  static const String reportAbuse1 = 'reportAbuse1';
  static const String confirmDetails = 'confirmDetails';
  static const String homepageStudents = 'homepageStudents';
  static const String homepageVolunteers = 'homepageVolunteers';

  //Routes and their respective Pages.
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.splashScreen: (context) => SplashScreen(),
    RouteNames.onboardingScreen: (context) => Onboarding(),
    RouteNames.volunteerSignupLogin: (context) => VolunteerSignupLogin(),
    RouteNames.login: (context) => Login(),
    RouteNames.signup1: (context) => SignUp1(),
    RouteNames.signup2: (context) => SignUp2(),
    RouteNames.signup3: (context) => SignUp3(),
    RouteNames.signup4: (context) => SignUp4(),
    RouteNames.volunteerThankYou: (context) => VolunteerThankYou(),
    RouteNames.reportAbuse1: (context) => ReportAbuse(),
    RouteNames.confirmDetails: (context) => ConfirmDetails(),
    RouteNames.homepageStudents: (context) => HomepageStudents(),
    RouteNames.homepageVolunteers: (context) => HomepageVolunteers(),
  };
}
