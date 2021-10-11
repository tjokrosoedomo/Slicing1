import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Frontpage(),
        backgroundColor: Color(0xffD35400),
      ),
    );
  }
}

class Frontpage extends StatelessWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/Images/chickenleg.png',
                color: Colors.white,),
              Text('\n Delicious Food',
                  style: TextStyle(color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text('\n Lorem ipsum dolor sit amet, consectetur \n adipiscing elit.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/Images/shipped.png',
                color: Colors.white,),
              Text('\n Fast Shipping',
                  style: TextStyle(color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text('\n Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. Interdum rhoncus nulla.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),)
              ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/Images/medal.png',
              color: Colors.white,),
              Text('\n Certificate Food',
              style: TextStyle(color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),),
              Text('\n Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. Morbi ultricies mauris a id.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset('Assets/Images/creditcard.png',
            color: Colors.white,),
        Text('\n Payment Online',
            style: TextStyle(color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        Text('\n Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. Dui ultricies sit massa.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white)),
        ]
    )
        ),
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
                  minimumSize: Size(330,45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(85)
                  )
                ),
                child: Text('Sign In'),
                  onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signinpage()
                  ),
              );
              }
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   primary: Color(0xffECF0F1),
                      minimumSize: Size(330,45),
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(85)
                      )
                  ),
                  child: Text('Sign Up',
                  ),
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Signuppage()
                    ),
                    );
                  }
              ),
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
      ],
    )
          )
          ),
    ]
        );
  }
}

class Signinpage extends StatelessWidget {
  const Signinpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
          IconButton(
            icon: Icon(Icons.arrow_back_ios_new,
            color: Colors.black,),
            onPressed: () {
      Navigator.pop(context);
      },
          )
      ),
      body:
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
            child: Text('Sign In',
        style: TextStyle(
        fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        ),
        ),
        Container(
          padding: EdgeInsets.only(top:25, right: 30, left: 30),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0xffECF0F1), filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(12),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)
                  )
                  ),
              hintText: 'Username'
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 30, right: 30),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0xffECF0F1), filled: true,
              isDense: true,
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)
                    )
                ),
              hintText: 'Password'
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
            child: Text('Sign In'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()
              ),
              );
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
                    child: Text('Or connect with',
                    )
                )
            )
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
                ]
            )
        ),
      ]
      ));
  }
}

class Signuppage extends StatelessWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
            leading:
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new,
              color: Colors.black,),
              onPressed: () {
                Navigator.pop(context);
              },
            )
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
                    fillColor: Color(0xffECF0F1), filled: true,
    isDense: true,
    contentPadding: EdgeInsets.all(12),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(100)
    )
    ),
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
    borderRadius: BorderRadius.all(Radius.circular(100)
    )
    ),
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

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('Assets/Images/store.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('Assets/Images/shoppinglist.png')),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('Assets/Images/list.png')),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('Assets/Images/user.png')),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xffD35400),
        unselectedItemColor: Colors.black87,
        showUnselectedLabels: true,
      ),
      body: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 80, left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Color(0xffECF0F1),
                      filled: true,
                      isDense: true,
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)
                          )
                      ),
                      hintText: 'Search'
                  ),
                )
            ),
            Row(
                children: [
                  Icon(Icons.location_on),
                  Text(
                    '9 West 46 Th Street, New York City',)
                ]
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 60,
                  child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                      child: Image.asset('Assets/Images/coffeecup.png',),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                      child: Image.asset('Assets/Images/list.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                      child: Image.asset('Assets/Images/pieceofcake.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                      child: Image.asset('Assets/Images/potatochips.png'),
                    ),
                  ],
                )
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text('Food Menu',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                )
            ),
    ]
      )
    );
  }
}



