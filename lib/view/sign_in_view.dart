import 'package:flutter/material.dart';

import 'home_view/home_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, right: 30, left: 30),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xffECF0F1),
                    filled: true,
                    isDense: true,
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    hintText: 'Username'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 30, right: 30),
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
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffD35400),
                    onPrimary: Colors.white,
                    minimumSize: Size(330, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(55))),
                child: Text('Sign In'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                }),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 190),
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      child: Divider(
                        color: Colors.black,
                        endIndent: 15,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                          child: Text(
                        'Or connect with',
                      )))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('Assets/Images/food.png'),
                  SizedBox(
                    width: 75,
                  ),
                  Image.asset('Assets/Images/facebook.png'),
                  SizedBox(
                    width: 18,
                  ),
                  Image.asset('Assets/Images/googleplus.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
