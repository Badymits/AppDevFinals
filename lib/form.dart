import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'navigation.dart';
import 'package:finals_dev/success.dart';


class Forms extends StatefulWidget{

  const Forms({Key? key}): super(key: key);
  FormPageState createState() => FormPageState();


}


class FormPageState extends State<Forms> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController subController = TextEditingController();
  var name = '';
  var address;
  var date_delivery;

  var _dropdownvalue;

  void dropDownCallBack(String? value) {
    if (value is String) {
      setState(() {
        _dropdownvalue = value;
      });
    }
  }
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

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
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Better nutrition for a better life",
              style: TextStyle( fontSize: 13.0, fontStyle: FontStyle.italic),
            )
          ],
        ),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: RichText(
                  text: const TextSpan(
                      text: "Subscription Plan",
                      style: TextStyle( color: Colors.black)
                  ),
                ),
              ),
              DropdownButton<String>(
                items: const [
                  DropdownMenuItem(child: Text("Weekly Subscription", style: TextStyle(color: Colors.black),), value: "Weekly Subscription",),
                  DropdownMenuItem(child: Text("Monthly Subscription"), value: "Monthly Subscription",),
                ],
                value: _dropdownvalue,
                onChanged: dropDownCallBack,
                isExpanded: true,
                style: TextStyle(color: Colors.black),
              ),

              SizedBox(height: 20),
              Text("Full Name"),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Full Name',
                ),
              ),

              SizedBox(height: 20),
              Text("Address"),
              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Address',
                ),
              ),
              SizedBox(height: 20),
              Text("Scheduled Date of Delivery"),
              TextFormField(
                controller: dateinput,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: 'Enter Date',
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );
                  if(pickedDate != null ){
                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                    //you can implement different kind of Date Format here according to your requirement

                    setState(() {
                      dateinput.text = formattedDate; //set output date to TextField value.
                    });
                  }else{
                    print("Date is not selected");
                  }
                },
              ),
              ElevatedButton(
                  onPressed: addData,
                  child: const Text(
                    "Submit",
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future addData() async {
    CollectionReference user = FirebaseFirestore.instance.collection('users');
    FirebaseAuth auth = FirebaseAuth.instance;
    final User users  = auth.currentUser!;
    final uid = users.uid;
    user.add({
      'Subscription': _dropdownvalue,
      'Name': nameController.text,
      'Address': addressController.text,
      'Date of Delivery': dateinput.text,
      'uid': uid,
    });
    Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const ThankYouPage())
    );
  }

}

