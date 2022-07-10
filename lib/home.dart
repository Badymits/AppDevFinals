import 'package:flutter/material.dart';
import 'navigation.dart';

const primaryColor = Color(0xFFC0CAED);

const textColor = Color(0xFF091747);

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             Text(
                  "KAE",
                  style: TextStyle(color: textColor, fontSize: 20.0),
              ),
              Text(
                "Better nutrition for a better life",
                style: TextStyle(color: textColor, fontSize: 13.0, fontStyle: FontStyle.italic),
              )
          ],
        ),
        backgroundColor: primaryColor,
      ),

      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 70),
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Icon(Icons.check, size: 20, color: textColor),
                                ),
                                TextSpan(
                                  text: " Supplements are registered by the FDA",
                                  style: TextStyle(fontSize: 20, color: Colors.black)
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          alignment: FractionalOffset.center,
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.check, size: 20, color: textColor),
                                ),
                                TextSpan(
                                    text:  "  Transparent pricing with no hidden fees",
                                    style: TextStyle(fontSize: 20, color: Colors.black)
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          alignment: FractionalOffset.center,
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.check, size: 20, color: textColor),
                                ),
                                TextSpan(
                                    text:  "  Cancel your subscription anytime",
                                    style: TextStyle(fontSize: 20, color: Colors.black)
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                            alignment: FractionalOffset.center,
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.check, size: 20, color: textColor),
                                  ),
                                  TextSpan(
                                      text:  "  Provides weekly, or monthly deliveries",
                                      style: TextStyle(fontSize: 20, color: Colors.black)
                                  )
                                ],
                              ),
                              textAlign: TextAlign.center,
                            )
                        ),
                        const SizedBox(height: 50),
                        Container(
                            alignment: FractionalOffset.center,
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.check, size: 20, color: textColor),
                                  ),
                                  TextSpan(
                                      text:  "  Schedule and pay online with ease",
                                      style: TextStyle(fontSize: 20, color: Colors.black)
                                  )
                                ],
                              ),
                              textAlign: TextAlign.center,
                            )
                        ),
                        const SizedBox(height: 50),
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 400.0,
                          alignment: Alignment.center,
                          child: const Image(image: AssetImage('assets/sub_service.jpg')),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            children:const  <Widget>[
                              Icon(Icons.verified_user, size: 28, color: textColor,
                              ),
                              Text("We make sure that our vitamins and supplements are registered by the FDA. We only want the best for our customers that is why"
                                  "we want to offer trusted products to maintain and improve your health."
                                , style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 25),
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            children: const <Widget>[
                              Icon(Icons.sort_sharp, size: 32, color: textColor,
                              ),
                              Text("Not only do we have supplements for your physical health, we have supplements that can help maintain your"
                                  "mental health or aid in preserving your diet. These supplements contain enough nutrients to maintain your healthy body!",
                                  style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 25),
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            children: const <Widget>[
                              Icon(Icons.hide_source, size: 32, color: textColor,
                              ),
                              Text("Don't worry! What you see is what you'll pay! Whatever the prices are listed here are all you need to pay for!"
                                  "No need to think about the extra things. We strive to build trust with our customers, transparency is one way to earn it!",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:20),
                          width: 500,
                          height: 240,
                          decoration: BoxDecoration(
                            color: Color(0xFFC0CAED),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(top:20),
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top:5), //apply padding to all four sides
                                  child: Text(
                                    "KAE",
                                    style: TextStyle(color: textColor, fontSize: 20.0,),
                                  ),
                                ),
                                Text(
                                  "Better Nutrition for a better life",
                                  style: TextStyle(color: textColor, fontSize: 18.0,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:20), //apply padding to all four sides
                                  child: Text(
                                    "Get some updates from us in your inbox.",
                                    style: TextStyle(color: textColor, fontSize: 15.0,),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:0, bottom:15,), //apply padding to all four sides
                                  child: Text(
                                    "Be the first to learn about our new products!",
                                    style: TextStyle(color: textColor, fontSize: 15.0,),
                                  ),
                                ),
                                SizedBox( // <-- SEE HERE
                                  width: 400,
                                  height:35,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                      filled: true,
                                      fillColor: Color(0xFFFFFFFF),
                                      labelText: 'Enter Email',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:24,), //apply padding to all four sides
                                  child: Text(
                                    " Copyright © KAE Wellness App 2022",
                                    style: TextStyle(color: textColor, fontSize: 12.0,),
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
            ],
          )
      ),
      drawer: NavDrawer(screen: '/'),
    );
  }
}