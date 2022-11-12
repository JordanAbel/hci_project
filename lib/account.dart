import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_demo/home_screen.dart';

var checkBoxValues=[false, false, false, false, false, false, false, false];

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
        actions:<Widget>[
          Text('@sample_user',
            textAlign: TextAlign.right,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children:<Widget> [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pp1.jpg'),
                  radius: 100,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              child: Text('Favorite Sports',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                //textAlign: TextAlign.center,
              ),
            ),
            CheckboxListTile(
              title: Text(
                "Snow boarding",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              value: checkBoxValues[0],
              onChanged: (bool? val) {
                setState(() {
                  checkBoxValues[0]= val!;
                });
              },
              side: BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: Text(
                "Basketball",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              value: checkBoxValues[1],
              onChanged: (bool? val) {
                setState(() {
                  checkBoxValues[1]= val!;
                });
              },
              side: BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: Text(
                "Volleyball",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              value: checkBoxValues[2],
              onChanged: (bool? val) {
                setState(() {
                  checkBoxValues[2]= val!;
                });
              },
              side: BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: Text(
                "Swimming",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              value: checkBoxValues[3],
              onChanged: (bool? val) {
                setState(() {
                  checkBoxValues[3]= val!;
                });
              },
              side: BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: Text(
                "football",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              value: checkBoxValues[4],
              onChanged: (bool? val) {
                setState(() {
                  checkBoxValues[4]= val!;
                });
              },
              side: BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: Text(
                "Soccer",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              value: checkBoxValues[5],
              onChanged: (bool? val) {
                setState(() {
                  checkBoxValues[5]= val!;
                });
              },
              side: BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: Text(
                "Table Tennis",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              value: checkBoxValues[6],
              onChanged: (bool? val) {
                setState(() {
                  checkBoxValues[6]= val!;
                });
              },
              side: BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: Text(
                "Golf",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              value: checkBoxValues[7],
              onChanged: (bool? val) {
                setState(() {
                  checkBoxValues[7]= val!;
                });
              },
              side: BorderSide(color: Colors.white),

            ),
          ],
        ),
      )

    );
  }
}
