import 'package:flutter/material.dart';
import 'package:slicing1/view/sign_in_view.dart';
import 'package:slicing1/view/sign_up_view.dart';

class LandingView extends StatelessWidget {
  const LandingView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
          SizedBox(
            child: Container(
              padding: EdgeInsets.only(top: 90),
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    child: Image.asset('Assets/Images/burger.png'),
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
                              borderRadius: BorderRadius.circular(85))),
                      child: Text('Sign In'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInView()),
                        );
                      }),
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
                        'Sign Up',
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpView()),
                        );
                      }),
                  SizedBox(
                    height: 75,
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
                          child: Text(
                            'Or connect with',
                          ),
                        ),
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}