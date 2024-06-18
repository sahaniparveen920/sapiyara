import 'package:flutter/material.dart';
import '../account/account_page.dart';
import '../pages/main_home_page.dart';
import '../setting/my_settings_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VoucherPage(),
    );
  }
}

class VoucherPage extends StatelessWidget {
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
              SizedBox(width: 55,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VoucherPage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.add_card_rounded,color: Color(0xff2A9770)),
                    Text('Voucher'),
                  ],
                ),
              ),
              SizedBox(width: 55,),
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
              SizedBox(width: 55,),
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
        title: Text('Voucher Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Vouchers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            VoucherItem(
              code: 'SAVE20',
              discount: '20%',
              description: 'Get 20% off on your purchase.',
              onTap: () {
                // Implement logic to apply the voucher.
              },
            ),
            VoucherItem(
              code: 'FREESHIP',
              discount: 'Free Shipping',
              description: 'Enjoy free shipping on your order.',
              onTap: () {
                // Implement logic to apply the voucher.
              },
            ),
            // Add more VoucherItem widgets for additional vouchers.
          ],
        ),
      ),
    );
  }
}

class VoucherItem extends StatelessWidget {
  final String code;
  final String discount;
  final String description;
  final VoidCallback onTap;

  VoucherItem({
    required this.code,
    required this.discount,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        margin: EdgeInsets.only(bottom: 16),
        child: ListTile(
          title: Text(
            '$code - $discount',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(description),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
