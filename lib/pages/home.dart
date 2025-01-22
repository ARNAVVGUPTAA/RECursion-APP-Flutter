import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

    return Scaffold(
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
                title: Text('Interview Experiences'),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Events'),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Get Started'),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Team'),
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
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
              background: Container(
                color: Colors.white,
              ),
            ),
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
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'REC',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 110,
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
                          padding: EdgeInsets.only(left: 40.0),
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
                // Add more content here
                Divider(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: [
                        Text("Have a question?"),
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(10),
                          child: FilledButton(
                              onPressed: () {}, child: Text("askREC")),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        Text('New to Programming?'),
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(10),
                          child: FilledButton(
                              onPressed: () {}, child: Text("Get Started")),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
