class UserInfo {
  final String email;
  final String pin;

  UserInfo({required this.email, required this.pin});

  factory UserInfo.fromJson(Map<String, String> json) {
    return UserInfo(
      email: json['email'] as String,
      pin: json['pin'] as String,
    );
  }

  Map<String, String> toJson() {
    return {'email': email, 'pin': pin};
  }
}
