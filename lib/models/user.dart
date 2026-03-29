class User {
  int id;
  String name;
  String email;

  User({required this.id, required this.name, required this.email});

  // fromJson
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}

void main() {
  Map<String, dynamic> json = {
    "id": 1,
    "name": "Ali",
    "email": "ali@mail.com"
  };

  User user = User.fromJson(json);
  print(user.name);

  print(user.toJson());
}