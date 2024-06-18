import 'package:flutter/material.dart';
import '../pages/main_home_page.dart';
import '../setting/my_settings_app.dart';
import '../voucer/voucher_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatelessWidget {
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
                    Icon(Icons.add_card_rounded,),
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
                    Icon(Icons.account_circle_rounded,color: Color(0xff2A9770),),
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
                    Icon(Icons.settings),
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
        title: Text('My Account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 160, vertical: 10),
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/photo.jpg'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Sahani Parveen',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_bag),
              onTap: () {
                // Navigate to the orders screen.
              },
            ),
            ListTile(
              title: Text('My Wishlist'),
              leading: Icon(Icons.favorite),
              onTap: () {
                // Navigate to the wishlist screen.
              },
            ),
            ListTile(
              title: Text('Address Book'),
              leading: Icon(Icons.location_on),
              onTap: () {
                // Navigate to the address book screen.
              },
            ),
            Divider(),
            ListTile(
              title: Text('Notifications'),
              leading: Icon(Icons.notifications),
              onTap: () {
                // Navigate to the notifications screen.
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                // Navigate to the settings screen.
              },
            ),
            ListTile(
              title: Text('Reviews'),
              leading: Icon(Icons.rate_review_outlined),
              onTap: () {
                // Navigate to the settings screen.
              },
            ),
            Divider(color: Colors.black,),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                // Implement logout logic.
              },
            ),
          ],
        ),
      ),
    );
  }
}
