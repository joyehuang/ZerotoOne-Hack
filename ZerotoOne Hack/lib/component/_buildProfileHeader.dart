// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../utils/userData.dart';
import '../colors.dart';
import '../component/_buildPointsIndicator.dart';
import '../page/personalProfileEdit.dart';

class BuildProfileHeader extends StatelessWidget {
  BuildProfileHeader({super.key});
  final user = UserData.myUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.salmon,
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: Material(
                  color: Colors.transparent,
                  child: Ink.image(
                    image: AssetImage(user.profilePicture),
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600, 
                            color: AppColors.textColorGrey),
                      ),
                      SizedBox(
                        height: 30,
                        child: IconButton(
                          icon: Image.asset('assets/editing.png'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PersonalProfileEdit()),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  Text(user.email,
                      style: const TextStyle(color: AppColors.textColorGrey)),
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
              BuildPointsIndicator(),
            ],
          ),
        ],
      ),
    );
  }
}
