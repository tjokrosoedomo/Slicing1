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
  int _currentIndex = 0;
  late List<Widget> _children;
  final Key keyOne = PageStorageKey('Profilepage');

  @override
  void initState(){
    _children = [
      Housepage(key: keyOne),
      Orderpage(),
      Profilepage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
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
        selectedItemColor: Color(0xffD35400),
        unselectedItemColor: Colors.black87,
        showUnselectedLabels: true,
      ),
      );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}

class Housepage extends StatelessWidget {
  const Housepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
    Column(
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
    padding: EdgeInsets.only(left: 20),
    scrollDirection: Axis.horizontal,
    children: <Widget>[
    Wrap(
    children: [
    Column(
    children: [
    ElevatedButton(
    onPressed: null,
    style: ElevatedButton.styleFrom(
    fixedSize: Size(60,60),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)
    )
    ),
    child: Image.asset('Assets/Images/coffeecup.png',),
    ),
    Text('Drink')
    ],
    ),
    ]
    ),
    SizedBox(
    width: 20,
    ),
    Wrap(
    children: [
    Column(
    children: [
    ElevatedButton(
    onPressed: null,
    style: ElevatedButton.styleFrom(
    fixedSize: Size(60,60),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)
    )
    ),
    child: Image.asset('Assets/Images/burger(1).png',
    color: Colors.black,),
    ),
    Text('Food')
    ],
    ),
    ]
    ),
    SizedBox(
    width: 20,
    ),
    Wrap(
    children: [
    Column(
    children: [
    ElevatedButton(
    onPressed: null,
    style: ElevatedButton.styleFrom(
    fixedSize: Size(60,60),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)
    )
    ),
    child: Image.asset('Assets/Images/pieceofcake.png'),
    ),
    Text('Cake')
    ],
    ),
    ],
    ),
    SizedBox(
    width: 20,
    ),
    Wrap(
    children: [
    Column(
    children: [ElevatedButton(
    onPressed: null,
    style: ElevatedButton.styleFrom(
    fixedSize: Size(60,60),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)
    )
    ),
    child: Image.asset('Assets/Images/potatochips.png'),
    ),
    Text('Snack')
    ],
    ),
    ],
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
    GridView.count(
    shrinkWrap: true,
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 3,
    children: <Widget>[
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: Color(0x303498DB)
    ),
    padding: const EdgeInsets.all(8),
    child: Stack(
    children: [
    Text('Burgers',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
    ),
    ),
    Image.asset('Assets/Images/hamburger.png'),
    ]
    )
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: Color(0x309B59B6)
    ),
    padding: const EdgeInsets.all(8),
    child: Stack(
    children: [
    Text('Pizza',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
    ),
    ),
    Image.asset('Assets/Images/pizza.png'),
    ]
    )
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: Color(0x303498DB)
    ),
    padding: const EdgeInsets.all(8),
    child: Stack(
    children: [
    Text('BBQ',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
    ),
    ),
    Image.asset('Assets/Images/BBQ.png'),
    ]
    )
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: Color(0x309B59B6)
    ),
    padding: const EdgeInsets.all(8),
    child: Stack(
    children: [
    Text('Fruit',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
    ),
    ),
    Image.asset('Assets/Images/fruit.png'),
    ]
    )
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: Color(0x303498DB)
    ),
    padding: const EdgeInsets.all(8),
    child: Stack(
    children: [
    Text('Sushi',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
    ),
    ),
    Image.asset('Assets/Images/sushi.png'),
    ]
    )
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: Color(0x309B59B6)
    ),
    padding: const EdgeInsets.all(8),
    child: Stack(
    children: [
    Text('Noodle',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
    ),
    ),
    Image.asset('Assets/Images/noodle.png'),
    ]
    )
    ),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    padding: EdgeInsets.only(left: 20,),
    child: Text('Near Me',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
    ),
    ),
    ),
    Container(
    padding: EdgeInsets.only(right: 20,),
    child: TextButton(onPressed: null,
    child: Text('View all')
    )
    )
    ]
    ),
    ListView(
    shrinkWrap: true,
    children: [
    Column(
    children: [
    Row(
    children: [
    Container(
    padding: EdgeInsets.only(left: 20),
    child: Image.asset('Assets/Images/restoran.png')
    ),
    SizedBox(
    width: 20,
    ),
    Column(
    children: [
    Text('Dapur Ijah Restaurant',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15
    ),
    ),
    Row(
    children: [
    Icon(Icons.location_on),
    Text('13 th street, 46 W 12th St, NY'),
    ]
    ),
    Row(
    children: [
    Icon(Icons.watch_later_outlined),
    Text('3 min - 1.1 km'),
    ]
    ),
    ]
    ),
    ],
    ),
    ]
    )
    ]
    )
    ]
    ),
    ]
    );
  }
}


class Orderpage extends StatelessWidget {
  const Orderpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Review Food'),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
        ),
        body: Container(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('Assets/Images/restoran.png'),
                  Column(
                    children: [
                      Text('Dogmie jagong tutung'),
                      Text(
                        '\$99.99',
                        style: TextStyle(color: Color(0xff2ECC71)),
                      ),
                    ],
                  ),
                  OutlinedButton(
                onPressed: null,
                child: Image.asset('Assets/Images/dislike.png')
            ),
            OutlinedButton(
                onPressed: null,
                child: Image.asset('Assets/Images/like.png')
            ),
          ],
      ),
      Row(
          children: [
            Image.asset('Assets/Images/restoran.png'),
            Column(
              children: [
                Text('Dogmie jagong tutung'),
                Text('\$99.99',
                  style: TextStyle(
                      color: Color(0xff2ECC71)
                  ),
                )
              ],
            ),
            OutlinedButton(
                onPressed: null,
                child: Image.asset('Assets/Images/dislike.png')
            ),
            OutlinedButton(
                onPressed: null,
                child: Image.asset('Assets/Images/like.png')
            ),
          ],
      ),
      Row(
          children: [
            Image.asset('Assets/Images/restoran.png'),
            Column(
              children: [
                Text('Dogmie jagong tutung'),
                Text('\$99.99',
                  style: TextStyle(
                      color: Color(0xff2ECC71)
                  ),
                )
              ],
            ),
            OutlinedButton(
                onPressed: null,
                child: Image.asset('Assets/Images/dislike.png')
            ),
            OutlinedButton(
                onPressed: null,
                child: Image.asset('Assets/Images/like.png')
            ),
          ],
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
            child: Text('Send'),
            onPressed: () {
              Navigator.pop(context);
            }
      ),
    ],
    ),
        )
    );
  }
}


class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          foregroundImage: AssetImage('Assets/Images/avatar.png'),
        ),
        Text('Itoh',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('+1 11229382748',
        textAlign: TextAlign.center,),
        TextButton(
            onPressed: null,
            child: Text('My Profile')
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Passwordpage()
                  ),
                  );
                  },
            child: Text('Change Password')
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Paymentpage()
              ),
              );
            },
            child: Text('Payment Settings')
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Voucherpage()
              ),
              );
            },
            child: Text('My Voucher')
        ),
        TextButton(
            onPressed: null,
            child: Text('Notification')
        ),
        TextButton(
            onPressed: null,
            child: Text('About Us')
        ),
        TextButton(
            onPressed: null,
            child: Text('Contact Us'),
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
            onPressed: null,
        ),
      ],
    );
  }
}

class Passwordpage extends StatelessWidget {
  const Passwordpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Change Password'),
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
    child: Text('Enter Old Password',
    style: TextStyle(
    fontSize: 10,
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
    hintText: 'Password'
    ),
    ),
    ),
      Container(
        padding: EdgeInsets.only(left: 30),
        alignment: Alignment.centerLeft,
        child: Text('Create New Password',
          style: TextStyle(
            fontSize: 10,
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
    hintText: 'Enter New Password'
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
    hintText: 'Re-enter New Password'
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
    child: Text('Save'),
    onPressed: () {
    Navigator.pop(context);
    }
    ),
      ]
    )
    );
  }
}

class Paymentpage extends StatelessWidget {
  const Paymentpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Payment'),
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
    Row(
        children: [
          Image.asset('Assets/Images/paypal.png'),
          Text('Paypal',),
          Text('itoh@gmail.com'),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Paypalpage()
                ),
                );
              },
              icon: Icon(Icons.arrow_forward_ios)
          )
        ]
    ),
      Row(
          children: [
            Image.asset('Assets/Images/creditcard.png'),
            Text('Paypal',),
            Text('4444 **** **** 6739'),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Creditcardpage()
                  ),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios)
            )
          ]
      ),
      Row(
          children: [
            Image.asset('Assets/Images/creditcard.png'),
            Text('Add new payment method',),
            Icon(Icons.add)
          ]
      ),
  ]
    )
    );
  }
}

class Creditcardpage extends StatelessWidget {
  const Creditcardpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Add Credit Card'),
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
        children: [
          Image.asset('Assets/Images/kredit.png'),
          Row(
            children: [
              Text('Bank name',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black12
              ),
              ),
              Text('AZRAEN Bank',
              textAlign: TextAlign.end,),
          ]
          ),
          Row(
              children: [
                Text('Your name',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black12
                  ),
                ),
                Text('Itoh',
                  textAlign: TextAlign.end,),
              ]
          ),
          Row(
              children: [
                Text('Card Number',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black12
                  ),
                ),
                Text('4444 3784 1380 6739',
                  textAlign: TextAlign.end,),
              ]
          ),
          Row(
              children: [
                Text('Data',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black12
                  ),
                ),
                Text('02/22',
                  textAlign: TextAlign.end,),
              ]
          ),
          Row(
              children: [
                Text('CVV',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black12
                  ),
                ),
                Text('877',
                  textAlign: TextAlign.end,),
              ]
          ),
          SizedBox(
            height: 100,
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
              child: Text('Add'),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}

class Paypalpage extends StatelessWidget {
  const Paypalpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Paypal'),
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
    Row(
    children: [
    Image.asset('Assets/Images/paypal.png'),
    Text('Paypal',),
    Text('itoh@gmail.com'),
    ]
    ),
      SizedBox(
        height: 400,
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
          child: Text('Make as default'),
          onPressed: null,
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
          child: Text('Remove',
          ),
          onPressed: null,
      ),
      ]
    )
    );
  }
}

class Voucherpage extends StatelessWidget {
  const Voucherpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('My Voucher'),
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
    children: [
    Row(
    children: [
    Image.asset('Assets/Images/voucher.png'),
    Column(
    children: [
    Text('Sale off 30% for Pizza'),
      Row(
          children: [
            Icon(Icons.watch_later_outlined),
            Text('Apr 10 - Apr 30'),
          ]
      ),
    Text('11 days left',
    style: TextStyle(
    color: Color(0xffE74C3C)
    ),
    ),
    ],
    ),
    OutlinedButton(
    onPressed: null,
    child: Image.asset('Assets/Images/dislike.png')
    ),
    OutlinedButton(
    onPressed: null,
    child: Image.asset('Assets/Images/like.png')
    ),
    ],
    ),
    Row(
    children: [
    Image.asset('Assets/Images/voucher.png'),
    Column(
    children: [
    Text('Sale off 30% for Pizza'),
      Row(
          children: [
            Icon(Icons.watch_later_outlined),
            Text('Apr 10 - Apr 30'),
          ]
      ),
    Text('11 days left',
    style: TextStyle(
    color: Color(0xffE74C3C)
    ),
    )
    ],
    ),
    OutlinedButton(
    onPressed: null,
    child: Image.asset('Assets/Images/dislike.png')
    ),
    OutlinedButton(
    onPressed: null,
    child: Image.asset('Assets/Images/like.png')
    ),
    ],
    ),
    Row(
    children: [
    Image.asset('Assets/Images/voucher.png'),
    Column(
    children: [
    Text('Sale off 30% for Pizza'),
      Row(
          children: [
            Icon(Icons.watch_later_outlined),
            Text('Apr 10 - Apr 30'),
          ]
      ),
    Text('11 days left',
    style: TextStyle(
    color: Color(0xffE74C3C)
    ),
    )
    ],
    ),
    OutlinedButton(
    onPressed: null,
    child: Image.asset('Assets/Images/dislike.png')
    ),
    OutlinedButton(
    onPressed: null,
    child: Image.asset('Assets/Images/like.png')
    ),
    ],
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
    child: Text('Send'),
    onPressed: () {
    Navigator.pop(context);
    }
    ),
    ],
    )
    );
  }
}

