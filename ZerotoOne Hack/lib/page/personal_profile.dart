import 'package:flutter/material.dart';
import '../colors.dart';
import '../component/_buildHistorySection.dart';

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
          _buildProfileHeader(),
          const Expanded(
            child: BuildHistorySection(),
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      color: AppColors.salmon,
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/user_avatar.png')),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Lily Hou',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColorGrey),
                      ),
                      SizedBox(
                        height: 30,
                        child: IconButton(
                          icon: Image.asset('assets/editing.png'),
                          onPressed: () {
                            // TODO: Implement edit functionality
                          },
                        ),
                      )
                    ],
                  ),
                  const Text('housuyun72@gmail.com',
                      style: TextStyle(color: AppColors.textColorGrey)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 10, color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Helped ',
                          style: TextStyle(color: AppColors.textColorGrey)),
                      TextSpan(
                        text: '7 people',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 10, color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Be helped by ',
                          style: TextStyle(color: AppColors.textColorGrey)),
                      TextSpan(
                        text: '10 people',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              _buildPointsIndicator(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPointsIndicator() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: '700 pts ',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              TextSpan(
                text: '/2000',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: 85,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(2.5),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: 700 / 2000, // 35% filled
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff472759), // Dark purple color
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ),
          ),
        ),
      ],
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
