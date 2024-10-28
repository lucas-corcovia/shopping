class AuthenticateModel {
  late String? username;
  late String? password;

  AuthenticateModel({required this.username, required this.password});

  AuthenticateModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}
