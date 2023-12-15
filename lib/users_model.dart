class UserModel {
  final String firstName;
  final String lastName;
  final String email;
  final String pictureURL;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.pictureURL,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      email: json['email'],
      pictureURL: json['picture']['medium'],
    );
  }
}