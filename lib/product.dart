import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navigation.dart';

const primaryColor = Color(0xFFC0CAED);

const textColor = Color(0xFF091747);

class product extends StatelessWidget {
  const product({Key? key}) : super(key: key);

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

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:30),
              alignment: Alignment.center,
              child: const Text(
                  'WHAT WE OFFER',
                   style: TextStyle(
                       fontSize: 30,
                   )),
            ),
            Container(
              height: 100,
              width:400,
              alignment: Alignment.center,
              child: const Text(
                  'KAE is the health consumer app that ultimately strives to give the best and trusted supplements there is. We Intend to support and aid in maintaining your health! We Choose our supplements very seriously. Here are the products we have for you!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,)
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              width: 220,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://assets.unilab.com.ph/uploads/Common/Products/Alnix%20Plus%20Syrup-485/Alnix%20Plus%20Syrup-816.jpg'),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(
                  color: Color(0xFFe0e0e0),
                  width: 4.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                  'Alnix Plus Syrup',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:15, left:25, right:25, bottom:10),
              child: const Text(
                  'These medicines are used for the relief of symptoms associated with: allergic rhinitis such as sneezing; runny, itchy nose; and itchy, watery eyes and skin symptoms of allergy such as itch and rash.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ),
            Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                ElevatedButton.icon(   // <-- ElevatedButton
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 25.0,
                  ),
                  label: Text('PURCHASE NOW!'),
                ),
              ],
            ),
                Container(
                  margin: new EdgeInsets.symmetric(vertical: 20.0),
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://ph-live-01.slatic.net/p/e0ca08cc5a4df875fc85164eaea53579.jpg'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                      color: Color(0xFFe0e0e0),
                      width: 4.0,
                    ),
                  ),
                ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                  'Robitussin DM Syrup',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:15, left:25, right:25, bottom:10),
              child: const Text(
                  'Robitussin DM is used to temporarily relieve your cough from minor throat irritation or a cold. It also helps loosen phlegm from chest congestion so that you can cough it up and spit it out..',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton.icon(   // <-- ElevatedButton
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 25.0,
                  ),
                  label: Text('PURCHASE NOW!'),
                ),
            Container(
              margin: EdgeInsets.only(top:30),
              alignment: Alignment.center,
              child: const Text(
                  'Subscription Pricing',
                  style: TextStyle(
                    fontSize: 25,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:15, left:25, right:25, bottom:10),
              child: const Text(
                  'We make it easy to supply supplements and multivitamins into your life. Choose one of our subscription plans to receive there products at your doorstep at anytime of your choosing. You may contact us about more details and payment information.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:25),
              child: const Text(
                  'Weekly Delivery',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                  'Minimum of',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:15),
              child: const Text(
                  'Php799.00',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:10),
              child: const Text(
                  'Great for customers who needs a supply with more supplements',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:5),
              child: const Text(
                  'Now up to 30pcs for each supplements and multivitamins',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:5),
              child: const Text(
                  'Delivered on the first day set by the customer',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:5),
              child: const Text(
                  'Earend a discount for every following week for 10%',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,)
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(   // <-- ElevatedButton
              onPressed: () {},
              icon: Icon(
                Icons.check_box,
                size: 20.0,
              ),
              label: Text('Subscribe to this plan now!'),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:60),
              child: const Text(
                  'Monthly Delivery',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                  'Minimum of',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:15),
              child: const Text(
                  'Php1299.00',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:10),
              child: const Text(
                  'For people who wants to stock up for the whole month',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:5),
              child: const Text(
                  'Now up to 60pcs for each supplements and multivitamins',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:5),
              child: const Text(
                  'Delivered on the first day set by the customer',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:5),
              child: const Text(
                  'Earend a discount for every following week for 50%',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,)
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(   // <-- ElevatedButton
              onPressed: () {},
              icon: Icon(
                Icons.check_box,
                size: 20.0,
              ),
              label: Text('Subscribe to this plan now!'),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:60),
              child: const Text(
                  'More Supplements & Multivitamins Coming Soon...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,)
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:20),
              child: const Text(
                  'Be sure to subscribe to be the first to know what products will arrive!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14,)
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
      drawer: NavDrawer(screen: '/'),
    );

  }

}