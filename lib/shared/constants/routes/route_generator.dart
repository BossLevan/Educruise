import 'package:educruise/shared/constants/page_transition.dart';
import 'package:educruise/shared/constants/routes/routes.dart';
import 'package:educruise/views/login/login_page.dart';
import 'package:educruise/views/onboarding.dart';
import 'package:educruise/views/signup/sign_up1.dart';
import 'package:educruise/views/signup/sign_up2.dart';
import 'package:educruise/views/signup/sign_up3.dart';
import 'package:educruise/views/signup/sign_up4.dart';
import 'package:educruise/views/splashscreen.dart';
import 'package:educruise/views/thank_you_volunteer.dart';
import 'package:educruise/views/volunteer_signup_login.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return CustomSlideTransition(child: SplashScreen());
        break;
      case RouteNames.onboardingScreen:
        return CustomSlideTransition(child: Onboarding());
        break;
      case RouteNames.volunteerSignupLogin:
        return CustomSlideTransition(child: VolunteerSignupLogin());
        break;
      case RouteNames.login:
        return CustomSlideTransition(child: Login());
        break;
      case RouteNames.signup1:
        return CustomSlideTransition(child: SignUp1());
        break;
      case RouteNames.signup2:
        return CustomSlideTransition(child: SignUp2());
        break;
      case RouteNames.signup3:
        return CustomSlideTransition(child: SignUp3());
        break;
      case RouteNames.signup4:
        return CustomSlideTransition(child: SignUp4());
        break;
      case RouteNames.volunteerThankYou:
        return CustomSlideTransition(child: VolunteerThankYou());
        break;
    }
  }
}
