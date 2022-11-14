
import 'package:flutter/material.dart';


void main() => runApp(const MaterialApp(
  home: Settings(),
));

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  get show => null;
  get subtitle => null;
  get trailing => null;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.grey[900],
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints.expand(
            height: 1200,
          ),
          child: Column (
            children:  const <Widget>[
            Text(
              "Location",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

             Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
              leading: Icon (
                Icons.location_on,
                color: Colors.deepPurple,
              ),
              subtitle: Text (
                  "Enable Sport Connect to use your location to find nearby events.",
              style: TextStyle(color: Colors.grey),
              ),

              trailing: Icon(Icons.view_compact),
            ),
            ],
          ),
          ),
    )
    );
  }
}
