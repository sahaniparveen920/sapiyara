import 'package:flutter/material.dart';
import 'package:sapiyara/pages/cart_screen.dart';
import 'package:sapiyara/pages/notification_screen.dart';
import 'package:sapiyara/screens/detail_page.dart';
import 'package:sapiyara/screens/detail_lock.dart';
import 'package:sapiyara/screens/detail_product.dart';
import 'package:sapiyara/screens/detail_project.dart';
import '../account/account_page.dart';
import '../screens/detail_long.dart';
import '../screens/detail_screen.dart';
import '../setting/my_settings_app.dart';
import '../voucer/voucher_page.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  final TextEditingController _searchController = TextEditingController();
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
              Column(
                children: [
                  Icon(Icons.home_filled, color: Color(0xff2A9770),),
                  Text('Home'),
                ],
              ),
              SizedBox(width: 55,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VoucherPage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.add_card_rounded),
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
      backgroundColor: Color(0xffFE9EBEA),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(padding: const EdgeInsets.all(40.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      child:TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, size: 25,color: Colors.grey,),
                            hintText: 'Search..',
                            helperStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),
                      ),
                    ),

                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                      },
                      child: Badge(
                        label: Text('4'),
                        child:  Image(
                            height: 25,
                            width: 20,
                            image: AssetImage('assets/icons/shopping.png')),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                      },
                      child: Badge(
                        label: Text('9+'),
                        child:  Image(
                            height: 25,
                            width: 22,
                            image: AssetImage('assets/icons/chat.png')),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 230,
                width: 420,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/poster1.png'
                        ))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Row(
                  children: [
                    Container(
                        height: 120,
                        width: 390,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        child: Icon(Icons.grid_view_outlined,size: 25,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    Text('Category', style: TextStyle(
                                      fontSize: 15,
                                    ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        child: Icon(Icons.flight,size: 25,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text('Flight'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        child: Icon(Icons.receipt_long,size: 25,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    const Text('Bill', style: TextStyle(
                                      fontSize: 15,
                                    ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        child: Icon(Icons.data_exploration_outlined,size: 25,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    const Text('Data Plan', style: TextStyle(
                                      fontSize: 15,
                                    ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        child: Icon(Icons.upcoming_outlined,size: 32,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    Text('Top Up', style: TextStyle(
                                      fontSize: 15,
                                    ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(padding: const EdgeInsets.only(left: 18.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Best Sale Product',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                    Text('See more', style: TextStyle(
                      fontSize:  17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2A977D),
                    ),)
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailLong()));
                      },
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height:80,
                              width: 160,
                              image: AssetImage(
                                  'assets/images/img1.png'
                              ),),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Necklace', style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("MEENAZ Pendant Necklace For \n"
                                      "Ladies & Girlfriend Wife Fashion\n"
                                      "Jewellery Set Love 4 Heart Rose",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('4.9|2336', style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('\$12.00',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff2A977D)
                                      ),),
                                    ],
                                  ),
                                ],
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
                      },
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height:85,
                              width: 160,
                              image: AssetImage(
                                  'assets/images/img2.png'
                              ),),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Rings', style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("MABEL 925 Sterling Silver\n"
                                      "Studded Leaf Adjustable State\n"
                                      "Ring, Gift for Girls & Women",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('5.0|2328', style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('\$20.00',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff2A977D)
                                      ),),
                                    ],
                                  ),
                                ],
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                      },
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height:80,
                              width: 160,
                              image: AssetImage(
                                  'assets/images/img3.png'
                              ),),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Earings', style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Clara 92.5 Sterling Silver\n"
                                      "Swiss Zirconia Pearl Earings\n"
                                      "Gift for Women and Girls",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('4.0|2636', style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('\$18.00',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff2A977D)
                                      ),),
                                    ],
                                  ),
                                ],
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailLock()));
                      },
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height:85,
                              width: 160,
                              image: AssetImage(
                                  'assets/images/img4.png'
                              ),),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Bracelet', style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("GIVA 925 Sterling Silver Zircon\n"
                                      "Excess Bracelet, Adjustable Gifts\n"
                                      "for Girlfriend, Gifts for Women",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('4.3|2398', style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('\$10.00',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff2A977D)
                                      ),),
                                    ],
                                  ),
                                ],
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProduct()));
                      },
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height:80,
                              width: 160,
                              image: AssetImage(
                                  'assets/images/img5.png'
                              ),),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Long Earings', style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Valentine Gift By Shining Diva\n"
                                      "Italian Designer Platinum Plated\n"
                                      "Crystal Butterfly Earrings Chain",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('5.0|2636', style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('\$25.00',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff2A977D)
                                      ),),
                                    ],
                                  ),
                                ],
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProject()));
                      },
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height:85,
                              width: 160,
                              image: AssetImage(
                                  'assets/images/img6.png'
                              ),),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Chains', style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("ZENEME Jewellery Set Classic\n"
                                      "Style AD/American Diamond Studd\n"
                                      "Rose Gold Plated Handcrafted",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('4.5|2398', style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('\$15.00',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff2A977D),
                                      ),),
                                    ],
                                  ),
                                ],
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
