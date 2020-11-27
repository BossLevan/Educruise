class SignUpResponse {
  bool error;
  String message;

  SignUpResponse({
    this.error,
    this.message,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> parsedJson) {
    return SignUpResponse(
      error: parsedJson['error'] ?? null,
      message: parsedJson['message'] ?? null,
    );
  }
}
