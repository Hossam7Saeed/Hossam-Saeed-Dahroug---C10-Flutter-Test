import 'package:flutter/material.dart';




class FirstHomeScreen extends StatelessWidget {
  static const String routeName = "FirstHomeScreen";

  const FirstHomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xffDFECDB),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            //         foregroundColor: Colors.transparent,
            // backgroundColor: Colors.transparent,
            foregroundImage: AssetImage("assets/images/toplogo.png",),
          ),
        ),
        title: Text("Moody"),
        ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Hello Sara Rose",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "How are you feeling today?",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/love.png", width: 40, height: 40),
                    Text("Love", style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/cool.png", width: 40, height: 40),
                    Text("Cool", style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/happy.png", width: 40, height: 40),
                    Text("Happy", style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/sad.png", width: 40, height: 40),
                    Text("Sad", style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Features",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 200),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(fontSize: 16, color: Color(0xFF027A48)),
                      ),
                      Icon(Icons.chevron_right, color: Color(0xFF027A48)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.all(10),
              color: Color(0xffECFDF3),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Positive vibes",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Boost your mood with",
                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "positive vibes",
                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    "assets/images/Walking.png",
                    height: 80,
                    width: 150,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Play.png",
                    height: 16,
                    width: 16,
                  ),
                  Text(
                    "10 minutes",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Exercise",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 200),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(fontSize: 16, color: Color(0xFF027A48)),
                      ),
                      Icon(Icons.chevron_right, color: Color(0xFF027A48)),
                    ],
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        // First Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/relax.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Relaxation",
                                  style: TextStyle(fontSize: 14, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(width: 150),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/meditation.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Meditation",
                                  style: TextStyle(fontSize: 14, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Second Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/breathing.png",
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Breathing",
                                  style: TextStyle(fontSize: 14, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(width: 150),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/yoga.png",
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Yoga",
                                  style: TextStyle(fontSize: 14, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(


        shape: CircularNotchedRectangle(),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
        IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
        },
      ),
      IconButton(
        icon: Icon(Icons.grid_on),
        onPressed: () {
        },
      ),
      IconButton(
        icon: Icon(Icons.calendar_today),
        onPressed: () {

        },

      ),
              IconButton(
                icon: Icon(Icons.person_2_outlined),
                onPressed: () {

                },

              ),
    ]
    ),
    ),
    );
  }
}
