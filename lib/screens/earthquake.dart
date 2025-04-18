import 'package:flutter/material.dart';

class Earthquake extends StatelessWidget {
  const Earthquake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 667,
          width: 375,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 70),
          child: Container(
            height: 480,
            width: 318,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 71, 74, 83),
            ),
          ),
        ),










        
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 580),
          child: Container(
            width: 375,
            height: 120,
            decoration: BoxDecoration(
                color: Color(0xFF474A53),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60))),
          ),
        ),
      ],
    ));
  }
}
