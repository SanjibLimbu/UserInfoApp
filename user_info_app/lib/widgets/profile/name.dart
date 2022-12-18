import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  late String name;
  Name({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: ImageIcon(
            AssetImage("images/user_icon.png"),
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
            name,
            style: const TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
