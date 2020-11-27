import 'package:flutter/cupertino.dart';

class SignUpModel extends ChangeNotifier {
  List<String> accountType = ['Individual', 'Organization'];
  String selectedAccountType = 'Individual';
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  TextEditingController phoneNumberText = TextEditingController();
  TextEditingController motivationToVolunteerText = TextEditingController();
  TextEditingController experienceInVolunteeringText = TextEditingController();
  String experienceInVolunteering;
  String motivationToVolunteer;
  String _email;
  String _password;
  String _phoneNumber;
  final _formKey = GlobalKey<FormState>();
  final pageThreeFormKey = GlobalKey<FormState>();

  Key get formKey {
    return _formKey;
  }

  String get email {
    return _email;
  }

  String get password {
    return _password;
  }

  String get phoneNumber {
    return _phoneNumber;
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

  Function onEmailSaved() {
    return (value) => {
          _email = emailText.text,
        };
  }

  Function onPhoneNumberSaved() {
    return (value) => {
          _phoneNumber = phoneNumberText.text,
        };
  }

  Function onPasswordSaved() {
    return (value) => {
          _password = passwordText.text,
        };
  }

  Function experienceInVolunteeringSaved() {
    return (value) => {
          experienceInVolunteering = experienceInVolunteeringText.text,
        };
  }

  Function motivationToVolunteerSaved() {
    return (value) => {
          motivationToVolunteer = motivationToVolunteerText.text,
        };
  }

  Function onTapLogin(formKey, context) {
    return () => {
          if (formKey.currentState.validate())
            {
              formKey.currentState.save(),
              print(_email),
              print(_password),
            }
        };
  }
}
