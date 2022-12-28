import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Contant Data/app_colors.dart';
import 'book_now.dart';
import 'home_screen.dart';

class BangladeshPage extends StatelessWidget {
    BangladeshPage ( {Key? key,required this.url }) : super(key: key);

  String url;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: transparentColor,
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10,bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: const Icon(IconlyLight.arrow_left_circle, color: mainColor, size: 30,),
                ),
              ),
            )
          ),
          body: Container(
            color: Color(0xffE5E5E5),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                          height: 300,
                          width: double.infinity,
                          child: (Image.asset(url, fit: BoxFit.fill,)
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                          child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Positioned(
                                bottom: 10,
                                left: 10,
                                right: 10,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: const [
                                        Text('Duration', style: TextStyle(color: subtitleColor),),
                                        SizedBox(height: 10,),
                                        Text('6 Days', style: TextStyle(color: titleColor, fontSize: 20, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: const [
                                        Text('Participant', style: TextStyle(color: subtitleColor),),
                                        SizedBox(height: 10,),
                                        Text('30 People', style: TextStyle(color: titleColor, fontSize: 20, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: const [
                                        Text('Landing', style: TextStyle(color: subtitleColor),),
                                        SizedBox(height: 10,),
                                        Text('2 Stop', style: TextStyle(color: titleColor, fontSize: 20, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                          ],
                        ),
                              ),
                            ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Fujinomiya', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                        Row(
                          children: const [
                            SizedBox(height: 50),
                            Icon(IconlyLight.location),
                            SizedBox(width: 8),
                            Text('Japan', style: TextStyle(color: subtitleColor),),
                            Spacer(),
                            Icon(IconlyBold.star, color: mainColor,),
                            SizedBox(width: 8),
                            Text('4.5  (2.220)', style: TextStyle(color: subtitleColor),)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TabBar(
                        unselectedLabelColor: Colors.black,
                        indicator: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        tabs:  const [
                        Tab( text: 'About'),
                        Tab( text: 'Benefit'),
                        Tab(text: 'HighLights', ),
                      ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 246,
                      child: TabBarView(
                        children: [
                          Container(
                            child: Text('Bangladesh, country of south-central Asia, located in the delta of the Padma (Ganges [Ganga]) and Jamuna (Brahmaputra) rivers in the northeastern part of the Indian subcontinent. The riverine country of Bangladesh (“Land of the Bengals”) is one of the most densely populated countries in the world, and its people are predominantly Muslim.',
                              style: TextStyle(color: Colors.black, fontSize: 18,),),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                          ),
                                          child: Icon(IconlyLight.home),
                                        ),

                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Hotel', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('Charme Spagna Boutique Hotel',style: TextStyle(color: subtitleColor),)
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                          ),
                                          child: Icon(IconlyLight.ticket),
                                        ),

                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Ticket', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('1 ticket for one trip home and away',style: TextStyle(color: subtitleColor),)
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                          ),
                                          child: Icon(IconlyLight.star),
                                        ),

                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('The Best Food', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('Daily meals for each vacation',style: TextStyle(color: subtitleColor),)
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                          ),
                                          child: Icon(IconlyLight.home),
                                        ),

                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Hotel', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('Charme Spagna Boutique Hotel',style: TextStyle(color: subtitleColor),)
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                          ),
                                          child: Icon(IconlyLight.ticket),
                                        ),

                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Ticket', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('1 ticket for one trip home and away',style: TextStyle(color: subtitleColor),)
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                          ),
                                          child: Icon(IconlyLight.star),
                                        ),

                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('The Best Food', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('Daily meals for each vacation',style: TextStyle(color: subtitleColor),)
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            image: const DecorationImage(
                                              image: NetworkImage('https://s3-ap-northeast-1.amazonaws.com/thegate/2020/09/16/17/59/05/Shiraitonotaki.jpg')
                                            )
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Shiraito Falls', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('3 KM',style: TextStyle(color: subtitleColor),)
                                      ],
                                    ),
                                    Container(
                                      width: 168,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(IconlyLight.arrow_right_2),
                                            alignment: Alignment.centerRight,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/11/da/23/b4/caption.jpg')
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Lake Tanuki', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('3 KM',style: TextStyle(color: subtitleColor),)
                                      ],
                                    ),
                                    Container(
                                      width: 168,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(IconlyLight.arrow_right_2),
                                            alignment: Alignment.centerRight,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage('https://youimg1.tripcdn.com/target/0ww50120008yosud6FC39_C_900_600.jpg_.webp?proc=source%2ftrip')
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Jimba Waterfalls', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('4 KM',style: TextStyle(color: subtitleColor),)
                                      ],
                                    ),
                                    Container(
                                      width: 140,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(IconlyLight.arrow_right_2),
                                            alignment: Alignment.centerRight,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage('https://youimg1.tripcdn.com/target/0ww50120008yosud6FC39_C_900_600.jpg_.webp?proc=source%2ftrip')
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Jimba Waterfalls', style: TextStyle(color: titleColor, fontWeight: FontWeight.bold, fontSize: 15),),
                                        SizedBox(height: 10,),
                                        Text('4 KM',style: TextStyle(color: subtitleColor),)
                                      ],
                                    ),
                                    Container(
                                      width: 140,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(IconlyLight.arrow_right_2),
                                            alignment: Alignment.centerRight,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Your Trip Count', style: TextStyle(color: subtitleColor),),
                      SizedBox(height: 10,),
                      Text('\$250', style: TextStyle(color: titleColor, fontSize: 25, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 170,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> BookNow(book: url, )));
                          },
                          child: Container(
                            child: const Center(
                                child: Text('Book Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}

