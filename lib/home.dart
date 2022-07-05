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
                        style: TextStyle(fontSize: 20)
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,

                ),

              ),
              const SizedBox(height: 50),
              Container(
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(Icons.check, size: 20, color: textColor),
                        ),
                        TextSpan(
                          text: " Transparent pricing with no hidden fees",
                          style: TextStyle(fontSize: 20)
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
                            text:  "  Cancel your subscription anytime",
                            style: TextStyle(fontSize: 20)
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
                            text:  "  Provides weekly, or monthly deliveries",
                            style: TextStyle(fontSize: 20)
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
                            style: TextStyle(fontSize: 20)
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )
              ),
              const SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://assets.unilab.com.ph/uploads/Common/Products/Alnix%20Plus%20Syrup-485/Alnix%20Plus%20Syrup-816.jpg'
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  border: Border.all(
                    color: Color(0xFFe0e0e0),
                    width: 4.0,
                  ),
                )
              ),
            ],
          )

      ),
      drawer: NavDrawer(screen: '/'),
    );
  }

}