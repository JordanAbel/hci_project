import 'package:flutter/material.dart';
import 'package:flutter_demo/account.dart';
import 'package:flutter_demo/create_event.dart';
import 'package:flutter_demo/drawer.dart';
import 'package:flutter_demo/search_screen.dart';

void main() => runApp(const MaterialApp(
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
        title: const Padding(
          padding: EdgeInsets.only(left: 200),
          child: Text(
            "@sample_user",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CreateEvent()
          ));
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFB4B3B3),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Search()
                  ));
                },
                icon: const Icon(Icons.search)
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.grey[850],)
            ),
          ],
        ),
      ),
      drawer: const DrawerMenu(),
    );

  }
}
