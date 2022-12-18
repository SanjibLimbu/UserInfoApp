import 'package:flutter/material.dart';
import 'package:user_info_app/widgets/profile/address.dart';
import 'package:user_info_app/widgets/profile/company.dart';
import 'package:user_info_app/widgets/profile/name.dart';
import 'package:user_info_app/widgets/profile/phone_widget.dart';
import 'package:user_info_app/widgets/profile/profile_widget.dart';
import 'package:user_info_app/widgets/profile/qoute.dart';
import 'package:user_info_app/widgets/profile/website_widget.dart';

class ProfilePage extends StatefulWidget {
  String name;
  String street;
  String city;
  String phone;
  String website;
  String companyName;
  String motto;
  String userName;
  String email;
  ProfilePage({
    super.key,
    required this.userName,
    required this.email,
    required this.name,
    required this.street,
    required this.city,
    required this.phone,
    required this.website,
    required this.companyName,
    required this.motto,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Color.fromARGB(255, 245, 243, 243),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  ProfileWidget(
                    email: widget.email,
                    userName: widget.userName,
                  ),
                  const QuoteWidget()
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Name(name: widget.name),
                      const SizedBox(
                        height: 20,
                      ),
                      AddressWidget(
                        city: widget.city,
                        street: widget.street,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      PhoneWidget(phone: widget.phone),
                      const SizedBox(
                        height: 20,
                      ),
                      WebsiteWidget(website: widget.website),
                      const SizedBox(
                        height: 20,
                      ),
                      CompanyWidget(
                        companyName: widget.companyName,
                        motto: widget.motto,
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
