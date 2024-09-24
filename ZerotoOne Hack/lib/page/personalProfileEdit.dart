import 'package:flutter/material.dart';
import '../utils/userData.dart';

class PersonalProfileEdit extends StatefulWidget {
  const PersonalProfileEdit({super.key});

  @override
  State<PersonalProfileEdit> createState() => _PersonalProfileEditState();
}

class _PersonalProfileEditState extends State<PersonalProfileEdit> {
  final user = UserData.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Column(
        children: [
          // Profile picture at the top
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
          // Rest of the profile edit form
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Add your form fields here
                // For example:
                // TextFormField(
                //   initialValue: user.name,
                //   decoration: InputDecoration(labelText: 'Name'),
                // ),
                // ... other form fields
              ],
            ),
          ),
        ],
      ),
    );
  }
}
