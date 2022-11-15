import 'package:flutter/material.dart';
import 'package:flutter_demo/home_screen.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3F3F3F),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Home()
            ));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Friends',
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp2.jpg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),

              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp3.jpg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),

              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp4.jpeg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text('User1',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              ),
              Container(
                child: Text('User2',
                  style: TextStyle(
                    color: Colors.white
                  ),

                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              ),
              Container(
                child: Text('User3',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal:40),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp5.jpg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),

              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp6.jpeg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),

              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp7.jpg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text('User4',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              ),
              Container(
                child: Text('User5',
                  style: TextStyle(
                      color: Colors.white
                  ),

                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              ),
              Container(
                child: Text('User6',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal:40),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp8.jpeg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),

              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp9.jpeg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),

              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp10.jpeg'),
                  radius: 50,
                ),
                padding: EdgeInsets.all(15),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text('User7',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              ),
              Container(
                child: Text('User8',
                  style: TextStyle(
                      color: Colors.white
                  ),

                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              ),
              Container(
                child: Text('User9',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal:40),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
