import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  String street;
  String city;
  AddressWidget({super.key, required this.city, required this.street});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: ImageIcon(
            AssetImage("images/home-address.png"),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                street,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                city,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
