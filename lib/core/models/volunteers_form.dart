class VolunteersForm {
  String name;
  String password;
  String confirmPassword;
  String role;
  String motivation;
  String email;
  String experience;
  String phoneNumber;

  VolunteersForm({
    this.experience,
    this.confirmPassword,
    this.password,
    this.email,
    this.motivation,
    this.name,
    this.role,
    this.phoneNumber,
  });

  Map<String, String> toJson() {
    return {
      "email": email,
      "phone": phoneNumber,
      "motivation": motivation,
      "experience": experience,
      "role": role,
      "password": password,
      "confirmPassword": password
    };
  }
}
