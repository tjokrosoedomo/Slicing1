import 'package:flutter/material.dart';

import 'password_view.dart';
import 'payment_view.dart';
import 'voucher_view.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 25, top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            foregroundImage: AssetImage('Assets/Images/avatar.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Itoh',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '+1 11229382748',
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Profile',
                  style: TextStyle(
                    color: Colors.black,
                  )),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Change Password', style: TextStyle(color: Colors.black)),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Passwordpage()),
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payment Settings', style: TextStyle(color: Colors.black)),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Paymentpage()),
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Voucher', style: TextStyle(color: Colors.black)),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Voucherpage()),
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notification', style: TextStyle(color: Colors.black)),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('About Us', style: TextStyle(color: Colors.black)),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Contact Us', style: TextStyle(color: Colors.black)),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xffECF0F1),
                minimumSize: Size(330, 45),
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(85))),
            child: Text(
              'Sign Out',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

