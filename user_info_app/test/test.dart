import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/hostel_1.jpg",
                      height: 220,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: 205,
                      child: Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Everest Boys Hostel",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "Rs 10500",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/location.png",
                                  height: 16,
                                  color: Colors.grey,
                                ),
                                const Text(
                                  "Dillibazar, Kathmandu",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "On map",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "What they offer",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius:
                                        1.0, // has the effect of softening the shadow
                                    spreadRadius:
                                        1.0, // has the effect of extending the shadow
                                    offset: Offset(
                                      1.0, // horizontal, move right 10
                                      1.0, // vertical, move down 10
                                    ),
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/double-bed.png",
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.fill,
                                    color: Colors.grey,
                                  ),
                                  const Text(
                                    "Two Seater",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 75,
                              width: 75,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius:
                                        1.0, // has the effect of softening the shadow
                                    spreadRadius:
                                        1.0, // has the effect of extending the shadow
                                    offset: Offset(
                                      1.0, // horizontal, move right 10
                                      1.0, // vertical, move down 10
                                    ),
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/wifi.png",
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.fill,
                                    color: Colors.grey,
                                  ),
                                  const Text(
                                    "Wifi",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 75,
                              width: 75,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius:
                                        1.0, // has the effect of softening the shadow
                                    spreadRadius:
                                        1.0, // has the effect of extending the shadow
                                    offset: Offset(
                                      1.0, // horizontal, move right 10
                                      1.0, // vertical, move down 10
                                    ),
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/parked-car.png",
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.fill,
                                    color: Colors.grey,
                                  ),
                                  const Text(
                                    "Parking",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 75,
                              width: 75,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius:
                                        1.0, // has the effect of softening the shadow
                                    spreadRadius:
                                        1.0, // has the effect of extending the shadow
                                    offset: Offset(
                                      1.0, // horizontal, move right 10
                                      1.0, // vertical, move down 10
                                    ),
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/dairy.png",
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.fill,
                                    color: Colors.grey,
                                  ),
                                  const Text(
                                    "Dairy",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 12),
                        child: Text(
                          "Discription",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      // Image.asset("assets/images/hostel_1.jpg"),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipOval(
                              child: Material(
                                color: Colors.green, // Button color
                                child: InkWell(
                                  splashColor: Colors.red, // Splash color
                                  onTap: () {},
                                  child: const SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/payment");
                                  },
                                  child: const Text(
                                    "Book Now",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    // primary: Colors.orange,
                                    primary:
                                        const Color.fromARGB(255, 5, 76, 208),
                                    shape: const StadiumBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}