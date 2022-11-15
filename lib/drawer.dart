import 'package:flutter/material.dart';
import 'package:flutter_demo/account.dart';
import 'package:flutter_demo/settings_page.dart';
import 'friends.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenu();
}

class _DrawerMenu extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF3F3F3F),
            ),
            child: Column(
              children:const <Widget> [
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
            leading: const Icon(Icons.account_circle),
            title: const Text('Account'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Account()
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage()
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Friends'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Friends()
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Messages'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}