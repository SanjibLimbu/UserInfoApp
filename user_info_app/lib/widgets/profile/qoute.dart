import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -50,
      child: Card(
        elevation: 1,
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 237, 176, 84),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                ' " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt "',
                style: TextStyle(
                  // overflow: TextOverflow.ellipsis,

                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
