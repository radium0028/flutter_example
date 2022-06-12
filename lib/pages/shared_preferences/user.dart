import 'dart:convert';

class User {
  String? name;
  int? age;

  User({this.name, this.age});

  factory User.fromMap(Map<String, dynamic> data) => User(
        name: data['name'] as String?,
        age: data['age'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'age': age,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [User].
  factory User.fromJson(String data) {
    if (data.isEmpty) return User();
    return User.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [User] to a JSON string.
  String toJson() => json.encode(toMap());
}
