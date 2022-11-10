
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Search(),
));

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  get show => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//grey bar top of screen and grey background with search icon
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text("Search for event"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[700],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                        //search icon in the search box
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.white),
                            icon: Icon(Icons.search, color: Colors.white)
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
            backgroundColor: Colors.deepPurple,
              child: const Icon(Icons.add),
                ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                  bottomNavigationBar: BottomAppBar(
                    color: Colors.grey[500],
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
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
    );
  }
}




