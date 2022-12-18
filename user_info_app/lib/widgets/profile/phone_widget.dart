import 'package:flutter/material.dart';

class PhoneWidget extends StatelessWidget {
  String phone;
  PhoneWidget({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: ImageIcon(
            AssetImage("images/telephone.png"),
            // color: Colors.red,
            size: 30,
          ),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 6,
          child: Text(
            phone,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
