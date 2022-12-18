import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  String userName;
  String email;
  ProfileWidget({
    super.key,
    required this.email,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(color: Colors.purple),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppBar().preferredSize.height,
            ),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/profile.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              userName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              email,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ) //CircleAvatar
          ],
        ),
      ),
    );
  }
}
