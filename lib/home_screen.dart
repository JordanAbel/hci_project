import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_demo/account.dart';
import 'package:flutter_demo/friends.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          backgroundColor: Color(0xFF121212),
          /*leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Menu()
              ));
            },
            icon: Icon(Icons.menu),
          ),
           */
        actions:<Widget>[
          Text('@sample_user',
          textAlign: TextAlign.end,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFB4B3B3),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search)
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.grey[850],)
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF3F3F3F),
              ),
              child: Column(
                children:<Widget> [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/pp1.jpg'),
                      radius: 50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '@sample_user',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Account()
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Friends'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Friends()
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () => {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Color(0xFF121212),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('assets/pp10.jpeg'),
                    ),
                    title: Text("Drop-in Basketball",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    subtitle: Text("Some friends and I will be on the courts between 5 and 7pm. Feel free to join us!",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    child:Row(
                      children: [
                        Icon(Icons.access_time_filled,
                          size: 20,
                          color: Colors.deepPurple,
                        ),
                        Text('17:00-19:00',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical:0, horizontal:10),
                        ),
                        Icon(Icons.location_on,
                        color: Colors.deepPurple,
                        ),
                        Flexible(child: Text('111 Mcgill Rd., Kamloops B.C',
                        style: TextStyle(
                          color: Colors.white
                        ),
                        )),
                      ],
                    ) ,
                  ),

                ],
              ),
            ),
            Card(
              color: Color(0xFF121212),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('assets/pp1.jpg'),
                    ),
                    title: Text("Snow Boarding",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    subtitle: Text("Anyone up for an afternoon of snowboarding? Come join us!",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    child:Row(
                      children: [
                        Icon(Icons.access_time_filled,
                          size: 20,
                          color: Colors.deepPurple,
                        ),
                        Text('12:00-15:00',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical:0, horizontal:10),
                        ),
                        Icon(Icons.location_on,
                          color: Colors.deepPurple,

                        ),
                        Flexible(child: Text('Sun Peaks Resort',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )),
                      ],
                    ) ,
                  ),

                ],
              ),
            ),
            Card(
              color: Color(0xFF121212),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('assets/pp2.jpg'),
                    ),
                    title: Text("Six-aside Soccer",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    subtitle: Text("Join us for soccer. We are looking for 4 more players",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),

                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    child:Row(
                      children: [
                        Icon(Icons.access_time_filled,
                          size: 20,
                          color: Colors.deepPurple,
                        ),
                        Text('17:00-18:30',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical:0, horizontal:10),
                        ),
                        Icon(Icons.location_on,
                          color: Colors.deepPurple,
                        ),
                        Flexible(child: Text('HillSide Stadium',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )),
                      ],
                    ) ,
                  ),

                ],
              ),
            ),
            Card(
              color: Color(0xFF121212),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('assets/pp3.jpg'),
                    ),
                    title: Text("I need a Tennis Partner",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    subtitle: Text("I'm looking for a tennis partner. I'm learning so either a learner or someone willing to teach me would be great!",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),

                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    child:Row(
                      children: [
                        Icon(Icons.access_time_filled,
                          size: 20,
                          color: Colors.deepPurple,
                        ),
                        Text('9:00-10:30',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical:0, horizontal:10),
                        ),
                        Icon(Icons.location_on,
                          color: Colors.deepPurple,
                        ),
                        Flexible(child: Text('Riverside Park',
                            style: TextStyle(
                            color: Colors.white
                        ),
                        )),
                      ],
                    ) ,
                  ),

                ],
              ),
            ),
            Card(
              color: Color(0xFF121212),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('assets/pp4.jpeg'),
                    ),
                    title: Text("Table Tennis",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    subtitle: Text(" We meet at the TCC every Sunday morning; always looking for new players.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    child:Row(
                      children: [
                        Icon(Icons.access_time_filled,
                          size: 20,
                          color: Colors.deepPurple,
                        ),
                        Text('9:00-12:00',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical:0, horizontal:10),
                        ),
                        Icon(Icons.location_on,
                          color: Colors.deepPurple,
                        ),
                        Flexible(child: Text('TCC',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )),
                      ],
                    ) ,
                  ),

                ],
              ),
            ),
            Card(
              color: Color(0xFF121212),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('assets/pp5.jpg'),
                    ),
                    title: Text("Early Bird Swimming",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    subtitle: Text("Early Birds out there can join us for an intense swim at 5:30am every day at Westsyde Pool. Great way to start the day! We all get breakfast at Tim Hortons afterwards.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    child:Row(
                      children: [
                        Icon(Icons.access_time_filled,
                          size: 20,
                          color: Colors.deepPurple,
                        ),
                        Text('5:30-6:30',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical:0, horizontal:10),
                        ),
                        Icon(Icons.location_on,
                          color: Colors.deepPurple,
                        ),
                        Flexible(child: Text('Westsyde Pool',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )),
                      ],
                    ) ,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
