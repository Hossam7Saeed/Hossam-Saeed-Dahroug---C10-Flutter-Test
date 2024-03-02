import 'package:flutter/material.dart';



class SecondHomeScreen extends StatefulWidget {
  static const String routeName = "SecondHomeScreen";

  const SecondHomeScreen({super.key});

  @override
  _SecondHomeScreenState createState() => _SecondHomeScreenState();
}

class _SecondHomeScreenState extends State<SecondHomeScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            foregroundImage: AssetImage("assets/images/girllogo.png"),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Jade"),
            Text(
              "Ready to workout?",
              style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          color: Color(0xffF8F9FC),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/heartbeat.png", width: 86.67, height: 31),
                      Text("81 BPM", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/todo.png", width: 86.67, height: 31),
                      Text("32.5 %", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/calo.png", width: 86.67, height: 31),
                      Text("1000 cal", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Workout Programs",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
              SizedBox(height: 44),
              Wrap(
                spacing: 10.0,
                runSpacing:20.0,
                children: [
                  for (int index = 0; index < 4; index++)
                    ChoiceChip(
                      label: Text(_getChipLabel(index)),
                      selected: _selectedTabIndex == index,
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedTabIndex = selected ? index : -1;
                        });
                      },
                    ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1),
                ),
                padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Text(
                              "7 days",
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                            ),
                          ),
                        ),
                        Text(
                          "Morning Yoga",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Improve mental focus",
                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "30 min",
                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/images/girl1.png",
                      height: 118.49,
                      width: 146.96,
                    ),
                  ],
                ),
              ),

              Container(
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1),
                ),
                padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),
                            child: Text(
                              "7 days",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,),),
                          ),
                        ),
                        Text(
                          "Plank Exercise",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Improve posture and stability.",
                          style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "30 min",
                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      "assets/images/girl2.png",
                      height: 125.08,
                      width: 140.8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Add your home button functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.navigation_outlined),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.bar_chart),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_2_outlined),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  String _getChipLabel(int index) {
    switch (index) {
      case 0:
        return "All Type";
      case 1:
        return "Full Body";
      case 2:
        return "Upper Body";
      case 3:
        return "Lower Body";
      default:
        return "";
    }
  }
}
