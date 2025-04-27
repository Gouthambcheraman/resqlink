import 'package:flutter/material.dart';
import 'package:resqlink/screens/home.dart';

class Volunteer extends StatefulWidget {
  const Volunteer({super.key});

  @override
  State<Volunteer> createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  bool isChecked = false; // Checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ✅ First: Background image at the bottom
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              "https://i.postimg.cc/Gh88zcGY/image.png",
              opacity: AlwaysStoppedAnimation(0.19),
              fit: BoxFit.cover,
            ),
          ),

          // ✅ Then your content above the background
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

          // ✅ Submit button (Positioned to avoid overlap)
          Positioned(
            bottom: 40,
            left: 50,
            right: 50,
            child: ElevatedButton(
              onPressed: () {
                print("Button pressed");
                // Here you can show a pop-up if needed.
                if (isChecked) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Thank you!"),
                        content: Text(
                            "You will be notified when you become a volunteer. "),
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
