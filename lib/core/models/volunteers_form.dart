class VolunteersForm {

  VolunteersForm();

  String email;
  String phone;
  String motivation;
  String experience;
  String role;
  String password;
  String confirmPassword;

  Map<String, dynamic> toJson() => {
    "email": email,
    "phone": phone,
    "motivation": motivation,
    "experience": experience,
    "role": role,
    "password": password,
    "confirmPassword": confirmPassword,
  };
}
