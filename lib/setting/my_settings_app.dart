import 'package:flutter/material.dart';
import '../account/account_page.dart';
import '../pages/main_home_page.dart';
import '../voucer/voucher_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkModeEnabled = false;
  bool _isNotificationEnabled = false;
  int _selectedFontSize = 1; // 0 - Small, 1 - Medium, 2 - Large

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.home_filled,),
                    Text('Home'),
                  ],
                ),
              ),
              SizedBox(width: 60,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VoucherPage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.add_card_rounded),
                    Text('Voucer'),
                  ],
                ),
              ),
              SizedBox(width: 60,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.account_circle_rounded),
                    Text('Account'),
                  ],
                ),
              ),
              SizedBox(width: 60,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.settings,color: Color(0xff2A9770)),
                    Text('Setting'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop(MyHomePage());
          },
        ),
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Appearance',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Dark Mode'),
              subtitle: Text('Enable dark mode for a better viewing experience.'),
              trailing: Switch(
                value: _isDarkModeEnabled,
                onChanged: (value) {
                  setState(() {
                    _isDarkModeEnabled = value;
                    // Implement logic to toggle dark mode.
                  });
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Notifications',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Enable Notifications'),
              subtitle: Text('Receive important updates and alerts.'),
              trailing: Switch(
                value: _isNotificationEnabled,
                onChanged: (value) {
                  setState(() {
                    _isNotificationEnabled = value;
                    // Implement logic to toggle notifications.
                  });
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Text Size',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile<int>(
              title: Text('Small'),
              value: 0,
              groupValue: _selectedFontSize,
              onChanged: (value) {
                setState(() {
                  _selectedFontSize = value!;
                  // Implement logic to apply small font size.
                });
              },
            ),
            RadioListTile<int>(
              title: Text('Medium'),
              value: 1,
              groupValue: _selectedFontSize,
              onChanged: (value) {
                setState(() {
                  _selectedFontSize = value!;
                  // Implement logic to apply medium font size.
                });
              },
            ),
            RadioListTile<int>(
              title: Text('Large'),
              value: 2,
              groupValue: _selectedFontSize,
              onChanged: (value) {
                setState(() {
                  _selectedFontSize = value!;
                  // Implement logic to apply large font size.
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
