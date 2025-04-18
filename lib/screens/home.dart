import 'package:flutter/material.dart';
import 'package:resqlink/screens/donations.dart';
import 'package:resqlink/screens/earthquake.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: 375,
          height: 667,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 118),
          child: Container(
            height: 25,
            child: Image.network(
              "https://i.postimg.cc/XNrdc26d/ResQLink.png",
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 75),
          child: Container(
            width: 325,
            height: 120,
            decoration: BoxDecoration(
                color: Color(0xFF474A53),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 215),
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF474A53),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 235, top: 215),
          child: Container(
            width: 110,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF54BE49),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 290, left: 28),
          child: Text(
            "Disaster Guidelines",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 71, 74, 83)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 547),
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
        Padding(
            padding: const EdgeInsets.only(top: 326, left: 27),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Earthquake()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 55),
                            child: Text(
                              "Earthquake",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Earthquake()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 55),
                            child: Text(
                              "Tsunami",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Earthquake()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 55),
                            child: Text(
                              "Fire",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Earthquake()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 55),
                            child: Text(
                              "Flood",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Earthquake()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 55),
                            child: Text(
                              "Landslide",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(202, 71, 74, 83),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Earthquake()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 55),
                            child: Text(
                              "Heavy rain",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decorationStyle: TextDecorationStyle.wavy,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 570, left: 28),
          child: Container(
            height: 40,
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Disaster, Location, Status',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Colors.white, width: 2), // Set outline color
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 167, 168, 169),
                      width: 2), // Color when focused
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 617, left: 32),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.white,
                iconSize: 32,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.groups_2),
                color: Colors.white,
                iconSize: 32,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Donations()));
                },
                icon: Icon(Icons.attach_money_outlined),
                color: Colors.white,
                iconSize: 32,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.white,
                iconSize: 32,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
