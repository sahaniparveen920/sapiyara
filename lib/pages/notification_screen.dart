import 'package:flutter/material.dart';

import 'main_home_page.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey[100],
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.more_horiz),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop(MyHomePage());
          },
        ),
        centerTitle: true,
        title: const Text("Notification"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: "Search notification",
              contentPadding: const EdgeInsets.all(16.0),
              fillColor: Colors.black12,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          ),
          const SizedBox(height: 10,),
          Expanded(
              child: ListView.separated(itemBuilder: (context,index){
                return ListTile(
                  isThreeLine: true,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: size.width * 0.09),
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage('assets/images/notification.png'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Jewellery Collection",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),),
                      Text('2h Ago',style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  subtitle: Text("Please buy this product for the 50% discount, hurry time will we expire",
                  maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              },
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[400],
                    indent: size.width * .08,
                    endIndent: size.width * .08,
                  ),
                  itemCount: 10))
        ],
      ),
    );
  }
}
