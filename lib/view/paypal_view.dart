import 'package:flutter/material.dart';

class Paypalpage extends StatelessWidget {
  const Paypalpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Paypal',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Column(children: [
          SizedBox(
            height: 30,
          ),
          Row(children: [
            Image.asset('Assets/Images/paypal.png'),
            Text(
              'Paypal',
            ),
            Spacer(),
            Text('itoh@gmail.com'),
          ]),
          SizedBox(
            height: 460,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xffD35400),
                onPrimary: Colors.white,
                minimumSize: Size(330, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(85))),
            child: Text('Make as default'),
            onPressed: () {},
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xffECF0F1),
                minimumSize: Size(330, 45),
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(85))),
            child: Text(
              'Remove',
            ),
            onPressed: () {},
          ),
        ]));
  }
}

