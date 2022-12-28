import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Authontication/splash_screen.dart';
import '../Contant Data/app_colors.dart';
import 'bangladesh_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

List<String> imageUrl=[
  'images/bangladesh.jpg',
  'images/pakistan.jpg',
  'images/japan.jpg',
  'images/america.jpg',
  'images/uae.jpg',
  'images/china.jpg',

];
  List<String> placeName=[
    'Bangladesh',
    'Pakistan',
    'Japan',
    'America',
    'United Arab Emirate',
    'China'
  ];

  List<int> favouriteIndex=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /3,
              color: secondaryColor,
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text('Hei, Jhon Willy', style: TextStyle(color: subtitleColor),),
                              Text('Discover Your Destination For Holiday',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                  overflow:TextOverflow.ellipsis,
                                ),
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            flex: 1,
                            child: Container(
                          height: 80,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 6.4),
                            image: const DecorationImage(
                                image: AssetImage('images/avatar.jpeg',
                                ),
                              fit: BoxFit.fill,
                            )
                          ),
                        ),
                        ),
                      ],
                    ),
                    const Spacer(),
                     TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search Location',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: const TextStyle(color: subtitleColor),
                          suffixIcon: const Icon(
                            IconlyLight.search,
                            color: mainColor,
                          ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('Categories', style: TextStyle(color: titleColor, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  HorizontalList(
                    spacing: 20.0,
                      padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                      itemCount: placeName.length,
                      itemBuilder: (_,index){
                        return Material(
                          elevation: 2.0,
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.8),
                                    image:  DecorationImage(
                                      image: AssetImage(imageUrl[index]),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Text(placeName[index],
                                  style: const TextStyle(color: Colors.black,fontSize: 20),)
                              ],
                            ),
                          ),
                        );
                      }),
                  const SizedBox(height: 30),
                  Row(
                    children:  [
                      const Text('Upcoming', style: TextStyle(color: titleColor, fontSize: 20, fontWeight: FontWeight.bold),),
                      const SizedBox(width: 40,),
                      const Text('Recent', style: TextStyle(color: subtitleColor, fontSize: 20),).onTap(()async{
                        final prefes= await SharedPreferences.getInstance();
                        await prefes.setString('token', '');
                        const splashScreen().launch(context);
                      }),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  HorizontalList(
                      itemCount: imageUrl.length,
                      itemBuilder: (_, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width/2.28,
                          padding: const EdgeInsets.only( right: 10.0, top: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> BangladeshPage(url: imageUrl[index],)));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Container(
                                      // height: MediaQuery.of(context).size.height/4.2,
                                      height: 214,
                                      width:  MediaQuery.of(context).size.width/2.28,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(imageUrl[index]),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20.0),
                                              color: Colors.white,
                                            ),
                                            child: Icon(favouriteIndex.contains(index)? Icons.favorite : Icons.favorite_border,color: mainColor,),
                                          ). onTap((){
                                            setState(() {
                                              favouriteIndex.contains(index)? favouriteIndex.remove(index): favouriteIndex.add(index);
                                            });
                                          }),
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffC8C7ff).withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(14.0)
                                            ),
                                            child: Row(
                                              mainAxisSize:MainAxisSize.min,
                                              children: const [
                                                Icon(IconlyBold.star, color: Colors.white,),
                                                SizedBox(width: 6.0),
                                                Text('4.5',style: TextStyle(color: Colors.white),)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text('Fujinomia', style: TextStyle(color: titleColor, fontSize: 20, fontWeight: FontWeight.bold),),
                                const SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Japan',style: TextStyle(color: subtitleColor),),

                                    Row(
                                      children: const [
                                        Text('\$250', style: TextStyle(color: subtitleColor, fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough),),
                                        SizedBox(width: 5,),
                                        Text('\$150', style: TextStyle(color: mainColor, fontWeight: FontWeight.bold, fontSize: 18.0),),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                    }
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
