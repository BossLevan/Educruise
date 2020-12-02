/// This is a model for the user class, as we all know the volunteers that
/// sign up is the primary user
class User {

  User({
    this.id,
    this.email,
    this.phone,
    this.motivation,
    this.type,
    this.role,
    this.verified,
    this.createdAt,
    this.updatedAt,
    this.token,
  });

  String id;
  String email;
  String phone;
  String motivation;
  String type;
  String role;
  bool verified;
  DateTime createdAt;
  DateTime updatedAt;
  String token;

  factory User.map(Map<String, dynamic> json) => User(
    id: json["id"] ?? null,
    email: json["email"] ?? null,
    phone: json["phone"] ?? null,
    motivation: json["motivation"] ?? null,
    type: json["type"] ?? null,
    role: json["role"] ?? null,
    verified: json["verified"] ?? null,
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    token: json["token"],
  );

}
