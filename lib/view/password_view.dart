import 'package:flutter/material.dart';

class Passwordpage extends StatelessWidget {
  const Passwordpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Change Password',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
            child: Text(
              'Enter Old Password',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xffECF0F1),
                  filled: true,
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: 'Password'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, top: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Create New Password',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xffECF0F1),
                  filled: true,
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: 'Enter New Password'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xffECF0F1),
                  filled: true,
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: 'Re-enter New Password'),
            ),
          ),
          SizedBox(
            height: 320,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffD35400),
                  onPrimary: Colors.white,
                  minimumSize: Size(330, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55))),
              child: Text(
                'Save',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ]));
  }
}

