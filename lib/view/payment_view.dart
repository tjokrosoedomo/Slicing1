import 'package:flutter/material.dart';

import 'credit_card_view.dart';
import 'paypal_view.dart';

class Paymentpage extends StatelessWidget {
  const Paymentpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Payment',
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
            height: 50,
          ),
          Row(children: [
            Image.asset('Assets/Images/paypal.png'),
            Text(
              'Paypal',
            ),
            Spacer(),
            Text('itoh@gmail.com'),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Paypalpage()),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios))
          ]),
          Row(children: [
            Image.asset('Assets/Images/mastercard.png'),
            Text(
              'Credit Card',
            ),
            Spacer(),
            Text('4444 **** **** 6739'),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Creditcardpage()),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios))
          ]),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Image.asset('Assets/Images/ccsymbol.png'),
            Text(
              'Add new payment method',
            ),
            Spacer(),
            Icon(Icons.add)
          ]),
        ]));
  }
}

