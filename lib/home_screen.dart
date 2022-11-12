import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_demo/account.dart';

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
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );

  }
}
