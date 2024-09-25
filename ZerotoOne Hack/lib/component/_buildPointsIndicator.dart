import 'package:flutter/material.dart';
import '../utils/userData.dart';

class BuildPointsIndicator extends StatelessWidget {
  BuildPointsIndicator({super.key});
  final user = UserData.myUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: '${user.point} pts ',
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const TextSpan(
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
              widthFactor: user.point / 2000, // 35% filled
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
}
