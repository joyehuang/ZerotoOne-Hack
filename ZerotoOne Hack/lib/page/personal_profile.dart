import 'package:flutter/material.dart';
import '../colors.dart';
import '../component/_buildHistorySection.dart';
import '../component/_buildProfileHeader.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Profile',
            style: TextStyle(color: AppColors.textColorGrey)),
        backgroundColor: AppColors.salmon,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: SizedBox(
              height: 50,
              width: 50,
              child: IconButton(
                icon: Image.asset('assets/mail.png'),
                onPressed: () {
                  // TODO: Implement edit functionality
                },
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          BuildProfileHeader(),
          const Expanded(
            child: BuildHistorySection(),
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      currentIndex: 2, // Profile page is selected
      onTap: (index) {
        // TODO: Implement navigation
      },
    );
  }
}
