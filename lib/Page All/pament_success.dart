import 'package:flutter/material.dart';

import '../Contant Data/app_colors.dart';

class PamentSuccess extends StatefulWidget {
  const PamentSuccess({Key? key}) : super(key: key);

  @override
  State<PamentSuccess> createState() => _PamentSuccessState();
}

class _PamentSuccessState extends State<PamentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage('images/no.png')
                  )
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: (
                Text('Payment Sucess', style: TextStyle(color: mainColor, fontSize: 35, fontWeight: FontWeight.bold),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: (
                      Text('Your payment has been confirmed you can check your ticket now',
                        style: TextStyle(color: subtitleColor, fontSize: 20, ),)
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
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: mainColor,
          ),
          child: Center(child: const Text('Check Your Ticket', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25),)),
        ),
      ),
    );
  }
}
