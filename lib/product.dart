import 'package:flutter/material.dart';
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
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
              width: 350,
              height: 250,
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
          ],
        ),
      ),
      drawer: NavDrawer(screen: '/'),
    );

  }

}