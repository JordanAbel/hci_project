import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: SettingsPage(),
));

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  bool _toggleLocationMode = false;
  bool _toggleEventNotifications = false;
  bool _toggleChatNotifications = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: const Text("Settings"),
          centerTitle: true,
            leading: const BackButton(
              color: Colors.white,
            ),
        ),
        body: Center(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('Location',
                    style: TextStyle(color: Colors.white),
                  ),
                  secondary: const Icon(Icons.location_on,
                    color: Colors.deepPurple,
                  ),
                  activeColor: Colors.deepPurple,
                  onChanged: (value) {
                    setState(() {
                      _toggleLocationMode = value;
                    });
                  },
                  value: _toggleLocationMode,
                ),
                const Divider(
                  thickness: 1.2,
                ),
                SwitchListTile(
                  title: const Text('Chat Notifications',
                      style: TextStyle(color: Colors.white),
                ),
                  secondary: const Icon(Icons.chat,
                    color: Colors.deepPurple),
                  activeColor: Colors.deepPurple,
                  onChanged: (value) {
                    setState(() {
                      _toggleChatNotifications = value;
                    });
                  },
                  value: _toggleChatNotifications,
                ),
                const Divider(
                  thickness: 1.2,
                ),
                SwitchListTile(
                  title: const Text('Event Notifications',
                  style: TextStyle(color: Colors.white),
                  ),
                  secondary: const Icon(Icons.notifications,
                    color: Colors.deepPurple),
                  activeColor: Colors.deepPurple,
                  onChanged: (value) {
                    setState(() {
                      _toggleEventNotifications = value;
                    });
                  },
                  value: _toggleEventNotifications,
                ),
              ],
            ),
        ),
    );
  }
}