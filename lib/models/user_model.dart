class UserModel {
  String firstName;
  String lastName;
  String email;
  String username;
  String faculty;
  String city;
  String password;
  bool graduated;

  UserModel(
      {this.firstName,
      this.lastName,
      this.email,
      this.username,
      this.faculty,
      this.city,
      this.password,
      this.graduated});

  UserModel.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    username = json['username'];
    faculty = json['faculty'];
    password = json['password'];
    city = json['city'];
    graduated = json['graduated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['username'] = this.username;
    data['faculty'] = this.faculty;
    data['city'] = this.city;
    data['password'] = this.password;
    data['graduated'] = this.graduated;
    return data;
  }
}
