import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdHomeScreen extends StatelessWidget {
  static const String routeName = "ThirdHomeScreen";

  const ThirdHomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logorose.png"),
            SizedBox(width: 8.0),
            Text(
              "AliceCare",
              style: GoogleFonts.milonga(),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 320.0,
              height: 44.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 6.0),
                  Icon(Icons.search),
                  SizedBox(width: 6.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Articles, Video, Audio and More...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              children: [
                ChoiceChip(
                  label: Text("Discover", style: TextStyle(color: Color(0xFF667085))),
                  selected: false,
                  onSelected: (bool selected) {},
                ),
                ChoiceChip(
                  label: Text("News", style: TextStyle(color: Color(0xFF667085))),
                  selected: false,
                  onSelected: (bool selected) {},
                ),
                ChoiceChip(
                  label: Text("Most Viewed", style: TextStyle(color: Color(0xFF667085))),
                  selected: false,
                  onSelected: (bool selected) {},
                ),
                ChoiceChip(
                  label: Text("Saved", style: TextStyle(color: Color(0xFF667085))),
                  selected: false,
                  onSelected: (bool selected) {},
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
                  SizedBox(width: 170),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(fontSize: 16, color: Color(0xFF5925DC)),
                      ),
                      Icon(Icons.chevron_right, color: Color(0xFF5925DC)),
                    ],
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 160),
              items: [
                "assets/images/cycle.png",
                "assets/images/selfcare.png",
              ].map((String imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFf2f4f7),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/doctor.png", width: 110.69, height: 168.14),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect with doctors & get suggestions",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Connect now and get expert insights",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 8.0), // Add spacing between texts and button
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Color(0xFF7F56D9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "View details",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                      "Cycle Phases and Period",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 50),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(fontSize: 16, color: Color(0xFF5925DC)),
                      ),
                      Icon(Icons.chevron_right, color: Color(0xFF5925DC)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Today",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_sharp),
            label: "Insights",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "Chat",
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {
        },
      ),
    );
  }
}