class User {
  final int id;
  final String phoneNumber;
  final bool role;

  User({
    required this.id,
    required this.phoneNumber,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      phoneNumber: json['phoneNumber'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phoneNumber': phoneNumber,
      'role': role,
    };
  }
}
