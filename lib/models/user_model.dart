class UserModel {
  int age;
  String id;
  String name;
  String email;
  String gender;

  UserModel(
    this.id, {
    required this.age,
    required this.name,
    required this.email,
    required this.gender,
  });

  String get asString => "UserModel(id: $id, age: $age, name: $name, email: $email, gender: $gender)";

  Map<String, dynamic> fromModelToMap() {
    return {
      "id": id,
      "age": age,
      "name": name,
      "email": email,
      "gender": gender,
    };
  }

  factory UserModel.fromMapToModel(Map map) {
    return UserModel(
      map["id"],
      age: map["age"],
      name: map["name"],
      email: map["email"],
      gender: map["gender"],
    );
  }
}
