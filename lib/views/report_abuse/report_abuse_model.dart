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
  TextEditingController placeOfAbuseController = TextEditingController();
  TextEditingController timeOfAbuseController = TextEditingController();
  TextEditingController summaryOfAbuseController = TextEditingController();
  TextEditingController natureOfEvidenceController = TextEditingController();

  String nameOfAbuser;
  String abuserPhoneNumber;
  String abuserEmailAddress;
  String abuserFacebookProfile;
  String abuserTwitterProfile;
  String abuserLinkedInProfile;
  String abuseInformation;
  String placeOfAbuse;
  String timeOfAbuse;
  String summaryOfAbuse;
  String natureOfEvidence;
  bool evidenceOfAbuse;
  String abuseFile; /* I dont know the datatype for file uploads */
  String studentPhoneNumber;
  String studentEmail;

  final formKeyPageOne = GlobalKey<FormState>();
  final formKeyPageTwo = GlobalKey<FormState>();
  final formKeyPageThree = GlobalKey<FormState>();
  final formKeyPageFour = GlobalKey<FormState>();

  PageController pageController = PageController(
    initialPage: 0,
  );

  int selectedValuePageFour = 0;
  int selectedValuePageThree = 0;
  Function onRadioButtonChangedPageFour() {
    return (val) => {
          selectedValuePageFour = val,
          notifyListeners(),
        };
  }

  Function onRadioButtonChangedPageThree() {
    return (val) => {
          selectedValuePageThree = val,
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
              formKeyPageOne.currentState.save(),
              print(nameOfAbuser),
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
              formKeyPageTwo.currentState.save(),
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
              formKeyPageThree.currentState.save(),
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

  Function onPlaceOfAbuse() {
    return (value) => {
          placeOfAbuse = placeOfAbuseController.text,
        };
  }

  Function onTimeOfAbuse() {
    return (value) => {
          timeOfAbuse = timeOfAbuseController.text,
        };
  }

  Function onSummaryOfAbuse() {
    return (value) => {
          summaryOfAbuse = summaryOfAbuseController.text,
        };
  }

  Function onEvidenceOfAbuse() {
    return (value) => {
          natureOfEvidence = natureOfEvidenceController.text,
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

  // Function navToPageTwo(formKey, context) {
  //   return () => {
  //         if (formKey.currentState.validate())
  //           {
  //             formKey.currentState.save(),
  //             print(nameOfAbuser),
  //             if (pageController.hasClients)
  //               {
  //                 pageController.animateToPage(
  //                   1,
  //                   duration: const Duration(milliseconds: 400),
  //                   curve: Curves.easeInOut,
  //                 ),
  //                 setPage(1),
  //                 // formKeyPageOne.currentState.save(),
  //                 //print(nameOfAbuser),
  //               },
  //           }
  //       };
  // }
}
