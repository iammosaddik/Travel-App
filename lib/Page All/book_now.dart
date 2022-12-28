

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import '../Contant Data/app_colors.dart';
import 'home.dart';

class BookNow extends StatefulWidget {
  BookNow({Key? key, required this.book}) : super(key: key);

  String book;

  @override
  State<BookNow> createState() => _BookNowState();
}
int _count=0;


class _BookNowState extends State<BookNow> {
  String dropdownvalue = 'Visa';

  var items = [
    'Visa',
    'Master Card',
    'Bkash',
    'Nagad',
    'SuerCash',
    'DachBangla',
  ];

  void _incrementCount(){
    setState(() {
      _count++;
    });
  }


  void _decrementCount(){
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: transparentColor,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: const Icon(
                  IconlyLight.arrow_left_circle, color: mainColor, size: 30,),
              ),
            ),
          )
      ),
      body: SingleChildScrollView(
        child: Container(
          child: (
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        child: (
                            Image.asset(widget.book, fit: BoxFit.fill,)
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: (
                                  const Text('Ticket Details',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(height: 12,),
                            Container(
                              child: (
                                  const Text('Check The Amount Of Tickets',
                                    style: TextStyle(
                                      color: subtitleColor,
                                      fontSize: 15,
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(height: 40,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: const [
                                    Icon(IconlyLight.ticket, size: 60,),
                                  ],
                                ),
                                const SizedBox(width: 40,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Fojinomiya', style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),),
                                    SizedBox(height: 10,),
                                    Text('Bangladesh', style: TextStyle(
                                        color: subtitleColor, fontSize: 12),)
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                     InkWell(
                                         onTap: (){
                                             _incrementCount();
                                         },
                                      child: Icon(IconlyLight.plus)),

                                    SizedBox(width: 10,),
                                    Text('${_count}', style: TextStyle(color: mainColor,fontSize: 18, fontWeight: FontWeight.bold),),
                                    SizedBox(width: 10,),

                                    InkWell( onTap: (){
                                      if(_count !=0) {
                                        _decrementCount();
                                      }
                                    },
                                        child: Icon(Icons.remove)),
                                  ],
                                ),

                              ],
                            ),
                            const SizedBox(height: 20,),
                            const Text(
                              'ticket purchases include the\nbenefits obtained according to\nthe information provided',
                              style: TextStyle(color: subtitleColor),),
                            const SizedBox(height: 20,),
                            Row(
                              children: [
                                Column(
                                  children: const [
                                    Text('Payment Via', style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey, width: 1),
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: DropdownButton(
                                      underline: SizedBox(),
                                      dropdownColor: Colors.grey,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                      value: dropdownvalue,
                                      icon: const Icon(Icons.keyboard_arrow_down),
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),

                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  )
                ],
              )
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 100,
          width: double.infinity,
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Your Trip Count', style: TextStyle(color: subtitleColor),),
                  Spacer(),
                  Text('\$250', style: TextStyle(color: mainColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular (40)
                ),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.orange,
                  ),
                    child: Text('Book Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    onPressed: ()=> showDialog(
                        context: context,
                        builder: (context)=> Container(
                          alignment: Alignment.topLeft,
                          child: AlertDialog(
                            alignment: Alignment.topLeft,
                            icon: Image.asset('images/no.png',height: 250,width: 200,),
                            title: const Text('Payment Success', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontSize: 30),),
                            content: const Text('Your payment has been confirmed you can check your ticket now', style: TextStyle(fontSize: 15),),
                            actions: [
                              Container(
                                width: double.infinity,
                                color: Colors.orange,
                                child: TextButton(onPressed: ()=> Navigator.pop(context),
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                  ),
                                  child: GestureDetector (
                                    onTap: ()=> Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                        Home()), (Route<dynamic> route) => false),
                                    child: const Text('Check Your Ticket',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                    // child: Text("Show Dialog")
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
