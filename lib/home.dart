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
                      ],
                    ),
                  ),
              ),
              Container(
                
              )
            ],
          )
      ),
      drawer: NavDrawer(screen: '/'),
    );
  }
}