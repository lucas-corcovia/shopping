class CreateUserModel {
  late String? name;
  late String? email;
  late String? username;
  late String? password;

  CreateUserModel({
    this.name,
    this.email,
    this.username,
    this.password,
  });

  CreateUserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['email'] = email;
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}
