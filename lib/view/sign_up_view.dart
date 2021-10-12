
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                alignment: Alignment.centerLeft,
                child: Text('Sign Up',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25, left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xffECF0F1), filled: true,
            isDense: true,
            contentPadding: EdgeInsets.all(12),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)
                )
            ),
                      hintText: 'Enter Username'
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
                  hintText: 'Enter Password'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xffECF0F1), filled: true,
                      isDense: true,
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: 'Re-enter Password'
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  primary: Color(0xffD35400),
                  onPrimary: Colors.white,
                  minimumSize: Size(330,45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55)
                  )
              ),
                  child: Text('Sign Up'),
                  onPressed: () {
                    Navigator.pop(context);
                  }
              ),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: null,
                    child: Text('Forgot Password?',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    )
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Row(
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
                          child: Text('Or connect with',
                          )
                      )
                  )
                ],
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
                      ]
                  )
              )
            ]
        ));
  }
}
