import 'package:flutter/material.dart';

class WebsiteWidget extends StatelessWidget {
  String website;
  WebsiteWidget({super.key, required this.website});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: ImageIcon(
            AssetImage("images/globe.png"),
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
            website,
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
