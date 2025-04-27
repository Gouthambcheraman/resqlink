import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF474A53),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        title: const Text('Profile'), // optional title
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 130, top: 50),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 111, 107, 94),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Column(
                children: [
                  Text(
                    "YOUR NAME",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "user@gmail.com",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 250),
            child: Container(
              width: 340,
              child: Column(
                children: [
                  buildProfileRow('Name', 'your name'),
                  Divider(),
                  buildProfileRow('Email account', 'yourname@gmail.com'),
                  Divider(),
                  buildProfileRow('Mobile number', 'Add number'),
                  Divider(),
                  buildProfileRow('Location', 'USA'),
                  Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildProfileRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    ),
  );
}
