import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:resqlink/screens/home.dart';

class Volunteer extends StatefulWidget {
  const Volunteer({super.key});

  @override
  State<Volunteer> createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  bool isChecked = false; // Checkbox state

  // 🔵 Controllers for text fields
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  // 🔵 Function to send data to backend
  Future<void> submitVolunteerData(String fullName, String phone, String location) async {
    const String apiUrl = 'http://your-server-ip:5000/volunteer'; // 👉 Change this to your server IP

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "fullName": fullName,
          "phone": phone,
          "location": location,
        }),
      );

      if (response.statusCode == 201) {
        print('Volunteer registered successfully');
      } else {
        print('Failed to register volunteer');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ✅ Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              "https://i.postimg.cc/Gh88zcGY/image.png",
              opacity: AlwaysStoppedAnimation(0.19),
              fit: BoxFit.cover,
            ),
          ),

          // ✅ Logo
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 118),
            child: SizedBox(
              height: 25,
              child: Image.network(
                "https://i.postimg.cc/XNrdc26d/ResQLink.png",
                color: Colors.black,
              ),
            ),
          ),

          // ✅ Heading
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 50),
            child: Text(
              "Become a Volunteer",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),

          // ✅ Form fields
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 250,
                    child: TextField(
                      controller: fullNameController,
                      decoration: InputDecoration(
                        labelText: 'FULL NAME',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 250,
                    child: TextField(
                      controller: phoneController,
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
                      controller: locationController,
                      decoration: InputDecoration(
                        labelText: 'LOCATION',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ✅ Checkbox
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 50),
            child: Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
                ),
                const Text(
                  "I agree to Volunteer",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          // ✅ Submit button
          Positioned(
            bottom: 40,
            left: 50,
            right: 50,
            child: ElevatedButton(
              onPressed: () async {
                if (isChecked) {
                  // Collect values
                  String fullName = fullNameController.text;
                  String phone = phoneController.text;
                  String location = locationController.text;

                  // Send to backend
                  await submitVolunteerData(fullName, phone, location);

                  // Show Thank You pop-up
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Thank you!"),
                        content: Text(
                            "You will be notified when you become a volunteer."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  print("Please agree to volunteer.");
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
                foregroundColor: Colors.white, // Text color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              child: Text("Submit"),
            ),
          ),
        ],
      ),
    );
  }
}
