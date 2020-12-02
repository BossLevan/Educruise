class Reports {

  Reports({
    this.id,
    this.abuserFullName,
    this.abuserEmail,
    this.abuserPhone,
    this.abuserFacebook,
    this.abuserTwitter,
    this.abuserInstagram,
    this.anonymous,
    this.evidence,
    this.personName,
    this.personPhone,
    this.personEmail,
    this.createdAt,
    this.updatedAt,
  });

  String id;
  String abuserFullName;
  String abuserEmail;
  String abuserPhone;
  String abuserFacebook;
  String abuserTwitter;
  String abuserInstagram;
  bool anonymous;
  String evidence;
  String personName;
  String personPhone;
  String personEmail;
  DateTime createdAt;
  DateTime updatedAt;

  factory Reports.fromJson(Map<String, dynamic> json) => Reports(
    id: json["_id"] ?? null,
    abuserFullName: json["abuserFullName"] ?? null,
    abuserEmail: json["abuserEmail"] ?? null,
    abuserPhone: json["abuserPhone"] ?? null,
    abuserFacebook: json["abuserFacebook"] ?? null,
    abuserTwitter: json["abuserTwitter"] ?? null,
    abuserInstagram: json["abuserInstagram"] ?? null,
    anonymous: json["anonymous"] ?? null,
    evidence: json["evidence"] ?? null,
    personName: json["personName"] ?? null,
    personPhone: json["personPhone"] ?? null,
    personEmail: json["personEmail"] ?? null,
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

}
