class User{
  final String name;
  final String email;
  final String password;
  final String profilePicture;
  final int point;

  const User({
    required this.name, 
    required this.email, 
    required this.password, 
    required this.profilePicture,
    required this.point
  });
}