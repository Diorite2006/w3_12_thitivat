class User {
  final String id;
  final String name;
  final String avatar;
  final String age;
  final String city;
  final DateTime birthdate;

  User({
    required this.id,
    required this.name,
    required this.avatar,
    required this.age,
    required this.city,
    required this.birthdate,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? 'Unknown',
      avatar: json['avatar']?.toString() ?? '',
      age: json['age']?.toString() ?? '0',
      city: json['city']?.toString() ?? '-',
      birthdate: DateTime.tryParse(json['birthdate']?.toString() ?? '') ?? DateTime.now(),
    );
  }
}