import 'package:flutter/material.dart';
import 'package:slicing1/view/landing_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    controller.addListener(() {
      print(controller.page);
      if (controller.page == 3) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD35400),
      floatingActionButton:
          controller.positions.isNotEmpty && controller.page == 3
              ? FloatingActionButton(
                  child: Icon(Icons.arrow_right_rounded),
                  backgroundColor: Colors.orange,
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LandingView())),
                )
              : null,
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/Images/chickenleg.png',
                  color: Colors.white,
                ),
                Text('\n Delicious Food',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Text(
                    '\n Lorem ipsum dolor sit amet, consectetur \n adipiscing elit.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/Images/shipped.png',
                  color: Colors.white,
                ),
                Text('\n Fast Shipping',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Text(
                  '\n Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. Interdum rhoncus nulla.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/Images/medal.png',
                  color: Colors.white,
                ),
                Text(
                  '\n Certificate Food',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '\n Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. Morbi ultricies mauris a id.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/Images/creditcard.png',
                  color: Colors.white,
                ),
                Text('\n Payment Online',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Text(
                    '\n Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. Dui ultricies sit massa.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
