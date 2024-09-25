// ignore: file_names
import 'package:flutter/material.dart';
import '../utils/userData.dart';
import 'package:image_picker/image_picker.dart';

class PersonalProfileEdit extends StatefulWidget {
  const PersonalProfileEdit({super.key});

  @override
  State<PersonalProfileEdit> createState() => _PersonalProfileEditState();
}

class _PersonalProfileEditState extends State<PersonalProfileEdit> {

  Future<void> _pickImage() async {
  try {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    
    if (image != null) {
      print('Image path: ${image.path}');
      // Handle the image
    }
  } catch (e) {
    print('Error picking image: $e');
    // Handle the error (e.g., show a dialog to the user)
  }
}

  var user = UserData.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Column(
        children: [
          // Profile picture at the top
          Stack(children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipOval(
                    child: Material(
                      color: Colors.transparent,
                      child: Ink.image(
                        image: AssetImage(user.profilePicture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 20, right: 144, child: _buildEditIcon(Colors.blue)),
          ]),
          // Rest of the profile edit form
          
        ],
      ),
    );
  }

  Widget _buildEditIcon(Color color) => _buildCircle(
        color: Colors.white,
        all: 3,
        child: _buildCircle(
          color: color,
          all: 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
              size: 20,
            ),
            onPressed: (){},
          ),
        ),
      );

  Widget _buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          width: 30,
          height: 30,
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}

