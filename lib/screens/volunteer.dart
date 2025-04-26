import 'package:flutter/material.dart';

class Volunteer extends StatelessWidget {
  const Volunteer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Center(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 250, // Set your desired width
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'FULL NAME',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'PHONE',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'LOCATION',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
