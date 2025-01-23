import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import the CarouselSlider widget

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Color getRandomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color randomColor = getRandomColor();
    final List<Widget> carouselItems = [
      Container(
        color: Colors.red,
        child: Center(
            child: Text('RECHASE',
                style: TextStyle(fontSize: 24, color: Colors.white))),
      ),
      Container(
        color: Colors.green,
        child: Center(
            child: Text('ALOHOMORA',
                style: TextStyle(fontSize: 24, color: Colors.white))),
      ),
      Container(
        color: Colors.blue,
        child: Center(
            child: Text('GEEKY SESSION',
                style: TextStyle(fontSize: 24, color: Colors.white))),
      ),
      Container(
        color: Colors.purple,
        child: Center(
            child: Text('SESSION WITH FACULTY ADVISOR',
            textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: Colors.white))),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'REC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'ursion',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/logoInverted.svg',
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            padding: EdgeInsets.only(top: 50.0),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.message),
                title: Text('askREC'),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Blog'),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Login'),
                onTap: () {
                  // Handle the tap
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 0, top: 10, bottom: 0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'REC',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 100,
                          color: Color.fromARGB(255, 35, 78, 85),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 0.0, left: 20, right: 10, bottom: 0),
                        child: Text(
                          "We are the programming community of NIT Durgapur, with focus on improving coding culture institute wide by conducting regular lectures from beginner to advance topics of programming. Our goal is to increase student's participation in inter-collegiate contest like ACM-ICPC and help them get better.",
                          style: TextStyle(color: Colors.black),
                          softWrap: true, // Ensure text wraps
                        ),
                      ),
                    ],
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'URSION',
                      style: TextStyle(
                        fontSize: 85,
                        color: Color.fromARGB(255, 35, 78, 85),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('New to Programming?'),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: FilledButton(
                      onPressed: () {},
                      child: Text("Get Started"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  width: 20,
                ),
              ),
              Column(
                children: [
                  Text('Have a Question?'),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: FilledButton(
                      onPressed: () {},
                      child: Text("askREC"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 20,
          ),
          Container(
              height: 500, // Set a fixed height for the carousel
              child: CarouselSlider(
                options: CarouselOptions(
                  height: double.infinity,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: carouselItems != null && carouselItems.isNotEmpty
                    ? carouselItems
                        .map((item) => Container(
                              margin: EdgeInsets.all(5.0), // Add some margin
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners
                                color: Colors.grey[200], // Background color
                              ),
                              child: Center(
                                child: item,
                              ),
                            ))
                        .toList()
                    : [
                        Container()
                      ], // Fallback if carouselItems is null or empty
              )),
        ],
      ),
    );
  }
}
