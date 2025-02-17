import 'package:flutter/material.dart';
import '../pages/main_home_page.dart';

class DetailLock extends StatelessWidget {
  const DetailLock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0,right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(top: 60.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Icon(Icons.arrow_back_ios,size: 30,),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite,color: Colors.red,size: 30,),
                        SizedBox(width: 13,),
                        Icon(Icons.share,size: 30,),
                        SizedBox(width: 13,),
                        Badge(
                          label: Text('5'),
                          child: Icon(Icons.shopping_bag_outlined,size: 30,),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              const Image(
                height: 350,
                width: 350,
                image: AssetImage('assets/images/img4.4.png'),),
              Row(
                children: [
                  Icon(Icons.on_device_training_sharp,color: Colors.grey,),
                  Text('MABELStore.id',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),),
                ],
              ),
              const SizedBox(height: 10,),
              const Text("GIVA 925 Sterling Silver Zircon Excess Bracelet, Adjustable",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,),),
              const SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star,color: Colors.orange,),
                  Text('4.3 Rating',style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                  Text('-',style: TextStyle(
                    fontSize: 30,
                  ),),
                  Text('2.3k+ Reviews',style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                  Text('-',style: TextStyle(
                    fontSize: 30,
                  ),),
                  Text('2.9k+ Sold',style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Text('About Items',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2A977D),
                  ),),
                  SizedBox(width: 20,),
                  Text('Reviews',style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(height: 10,),
              Padding(padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Brand',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),),
                        SizedBox(width: 7,),
                        Text('ChAmkpR',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Color:',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),),
                        SizedBox(width: 7,),
                        Text('Aprikot',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text('Total Price'),
                            Text('\$10.00',style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2A977D),
                            ),),
                          ],
                        ),
                        SizedBox(width: 125,),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 70,
                              decoration: const BoxDecoration(
                                color: const Color(0xff2A977D),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7),
                                  topLeft: Radius.circular(7),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.shopping_basket_outlined,color: Colors.white,),
                                      Text('1',style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                              ),
                              child: Center(
                                child: Text('Buy Now',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
