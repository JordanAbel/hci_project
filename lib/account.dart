import 'package:flutter/material.dart';
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
      backgroundColor: const Color(0xFF3F3F3F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home()
              ));
            },
            icon: const Icon(Icons.arrow_back),
          ),
        actions:const <Widget>[
          Text('@sample_user',
            textAlign: TextAlign.right,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children:<Widget> [
            const Center(
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
              padding: const EdgeInsets.all(20),
              child: const Text('Favorite Sports',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                //textAlign: TextAlign.center,
              ),
            ),
            CheckboxListTile(
              title: const Text(
                "Snowboarding",
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
              side: const BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: const Text(
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
              side: const BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: const Text(
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
              side: const BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: const Text(
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
              side: const BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: const Text(
                "Football",
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
              side: const BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: const Text(
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
              side: const BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: const Text(
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
              side: const BorderSide(color: Colors.white),

            ),
            CheckboxListTile(
              title: const Text(
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
              side: const BorderSide(color: Colors.white),

            ),
          ],
        ),
      )

    );
  }
}
