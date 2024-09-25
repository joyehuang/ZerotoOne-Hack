class User {
  final String name;
  final String email;
  final String password;
  String profilePicture;
  final int point;

  User({
    required this.name, 
    required this.email, 
    required this.password, 
    required this.profilePicture,
    required this.point
  });

  User copyWith({String? profilePicture}) {
    return User(
      name: name,
      email: email,
      password: password,
      profilePicture: profilePicture ?? this.profilePicture,
      point: point,
    );
  }
}