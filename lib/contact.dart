import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'navigation.dart';


const primaryColor = Color(0xFFC0CAED);

const textColor = Color(0xFF091747);

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: const Text(
                  'We Would Love To Hear From You',
                  style: TextStyle(
                    fontSize: 30,
                  )),
            ),
            Container(
              height: 100,
              width:400,
              alignment: Alignment.center,
              child: const Text(
                  'Whether you are curious about features, a free trial, or a discount pass- we are ready to answer any and all question.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,)
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
                  labelText: 'Enter Subject',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.multiline,
              ),
            ),
            Container(
              height: 25,
              width:400,
              alignment: Alignment.center,
              child: const Text(
                  '---------------------------------------------------------------------------------------------',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,)
              ),
            ),
      SizedBox( // <-- SEE HERE
        width: 400,
        height:80,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            filled: true,
            fillColor: Color(0xFFFFFFFF),
            labelText: 'Enter A Message',
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton.icon(   // <-- ElevatedButton
              onPressed: () {},
              icon: Icon(
                Icons.send,
                size: 25.0,
              ),
              label: Text('SEND MESSAGE NOW!'),
            ),
          ],
        ),
      ),
      drawer: NavDrawer(screen: '/third'),
    );

  }
}