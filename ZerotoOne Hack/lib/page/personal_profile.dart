import 'package:flutter/material.dart';
import '../colors.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Profile',
            style: TextStyle(color: AppColors.textColor)),
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
          Expanded(
            child: _buildHistorySection(),
          ),
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
                            color: AppColors.textColor),
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
                      style: TextStyle(color: AppColors.textColor)),
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
                          style: TextStyle(color: AppColors.textColor)),
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
                          style: TextStyle(color: AppColors.textColor)),
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

  Widget _buildHistorySection() {
    return Container(
      color: AppColors.blush, // Set your desired background color here
      child: Column(
        children: [
          const SizedBox(height: 16),
          SizedBox(
            width: 337,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xfffffcfc),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                // TODO: Implement history functionality
              },
              child: const Text('History',
                  style: TextStyle(color: Color(0xff897494)),
                  textAlign: TextAlign.start),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xfffffcfc),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              // TODO: Implement asking for help functionality
                            },
                            child: const Text('Asking for help',
                                style: TextStyle(color: Color(0xff897494))),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xfffffcfc),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              // TODO: Implement offering help functionality
                            },
                            child: const Text('Offering help',
                                style: TextStyle(color: Color(0xff897494))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        _buildOfferItem('Pads', '20/08/2024 12:40', '85m',
                            '3 Floor, XX Library', true),
                        _buildOfferItem('wet wipe', '20/08/2024 12:50', '100m',
                            'N113 CSIT bldg', false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOfferItem(String item, String date, String distance,
      String position, bool isSentOut) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Offering $item',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.purple)),
          const SizedBox(height: 8),
          Text('Posted on $date', style: TextStyle(color: Colors.grey[600])),
          Text('Distance: $distance',
              style: TextStyle(color: Colors.grey[600])),
          Text('Position: $position',
              style: TextStyle(color: Colors.grey[600])),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120,
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.salmon,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(isSentOut ? 'Sent out' : 'Still available',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 11)),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: IconButton(
                      icon: Image.asset('assets/delete.png',
                          color: const Color(0xff4d2d5e)),
                      onPressed: () {
                        // TODO: Implement edit functionality
                      },
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: IconButton(
                      icon: Image.asset('assets/editing.png',
                          color: const Color(0xff4d2d5e)),
                      onPressed: () {
                        // TODO: Implement edit functionality
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
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
