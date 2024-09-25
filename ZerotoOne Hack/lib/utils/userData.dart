// ignore: file_names
import '../model/user.dart';

class UserData{
  static var myUser = User(
    name: 'Lily Hou',
    email: 'housun72@gmail.com',
    password: 'securepassword',
    profilePicture: 'assets/user_avatar.png',
    point: 700,
  );

  static var myUser2 = User(
    name: 'John Doe',
    email: 'johndoe@gmail.com',
    password: 'securepassword',
    profilePicture: 'assets/user_avatar.png',
    point: 1000,
  );
}
