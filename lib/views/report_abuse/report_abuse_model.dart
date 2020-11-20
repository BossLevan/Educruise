import 'package:flutter/material.dart';

class ReportAbuseModel extends ChangeNotifier {
  TextEditingController nameOfAbuserController = TextEditingController();
  TextEditingController abuserPhoneNumberController = TextEditingController();
  TextEditingController abuserEmailAddressController = TextEditingController();
  TextEditingController abuserFacebookProfileController =
      TextEditingController();
  TextEditingController abuserTwitterProfileController =
      TextEditingController();
  TextEditingController abuserLinkedInProfileController =
      TextEditingController();
  TextEditingController abuseInformationController = TextEditingController();
  TextEditingController studentPhoneNumberController = TextEditingController();
  TextEditingController studentEmailController = TextEditingController();

  String nameOfAbuser;
  String abuserPhoneNumber;
  String abuserEmailAddress;
  String abuserFacebookProfile;
  String abuserTwitterProfile;
  String abuserLinkedInProfile;
  String abuseInformation;
  String studentPhoneNumber;
  String studentEmail;

  PageController pageController = PageController(
    initialPage: 0,
  );

  int selectedValue = 0;
  Function onRadioButtonChanged() {
    return (val) => {
          selectedValue = val,
          notifyListeners(),
        };
  }

  int page = 0;
  void setPage(int value) {
    page = value;
    notifyListeners();
  }

  Function navToPageOne() {
    return () => {
          if (pageController.hasClients)
            {
              pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              ),
              setPage(0),
            }
        };
  }

  Function navToPageTwo() {
    return () => {
          if (pageController.hasClients)
            {
              pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              ),
              setPage(1),
            },
        };
  }

  Function navToPageThree() {
    return () => {
          if (pageController.hasClients)
            {
              pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              ),
              setPage(2),
            }
        };
  }

  Function navToPageFour() {
    return () => {
          if (pageController.hasClients)
            {
              pageController.animateToPage(
                3,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              ),
              setPage(3),
            }
        };
  }

  Function validate() {
    return (String value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      } else {
        return null;
      }
    };
  }

  Function onNameOfAbuserSaved() {
    return (value) => {
          nameOfAbuser = nameOfAbuserController.text,
        };
  }

  Function onAbuserPhoneNumber() {
    return (value) => {
          abuserPhoneNumber = abuserPhoneNumberController.text,
        };
  }

  Function onAbuserEmailAddress() {
    return (value) => {
          abuserEmailAddress = abuserEmailAddressController.text,
        };
  }

  Function onAbuserFacebookProfile() {
    return (value) => {
          abuserFacebookProfile = abuserFacebookProfileController.text,
        };
  }

  Function onAbuserTwitterProfile() {
    return (value) => {
          abuserTwitterProfile = abuserTwitterProfileController.text,
        };
  }

  Function onAbuserLinkedInProfile() {
    return (value) => {
          abuserLinkedInProfile = abuserLinkedInProfileController.text,
        };
  }

  Function onAbuseInformation() {
    return (value) => {
          abuseInformation = abuseInformationController.text,
        };
  }

  Function onStudentPhoneNumber() {
    return (value) => {
          studentPhoneNumber = studentPhoneNumberController.text,
        };
  }

  Function onStudentEmail() {
    return (value) => {
          studentEmail = studentEmailController.text,
        };
  }
}
