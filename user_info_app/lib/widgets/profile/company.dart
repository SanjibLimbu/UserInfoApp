import 'package:flutter/material.dart';

class CompanyWidget extends StatelessWidget {
  String companyName;
  String motto;
  CompanyWidget({
    super.key,
    required this.companyName,
    required this.motto,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: ImageIcon(
            AssetImage("images/company.png"),
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
                  companyName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ' " $motto " ',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
