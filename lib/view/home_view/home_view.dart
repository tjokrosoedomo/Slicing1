import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> _children = [
    Housepage(),
    Orderpage(),
    Paypalpage(),
    Profilepage(),
  ];

  void onTabTapped(int index, BuildContext context) {
    print(index);
    setState(() {
       DefaultTabController.of(context)?.animateTo(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(children: _children),
        bottomNavigationBar: Builder(
          builder: (context) => BottomNavigationBar(
            onTap: (val) => onTabTapped(val, context),
            type: BottomNavigationBarType.fixed,
            currentIndex: DefaultTabController.of(context)?.index ?? 0,
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
        ),
      ),
    );
  }
}

class Housepage extends StatelessWidget {
  const Housepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: [
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
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: 'Search'),
            )),
        Row(children: [
          Icon(Icons.location_on),
          Text(
            '9 West 46 Th Street, New York City',
          )
        ]),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 60,
            child: ListView(
              padding: EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Wrap(children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(60, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Image.asset(
                          'Assets/Images/coffeecup.png',
                        ),
                      ),
                      Text('Drink')
                    ],
                  ),
                ]),
                SizedBox(
                  width: 20,
                ),
                Wrap(children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(60, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Image.asset(
                          'Assets/Images/burger(1).png',
                          color: Colors.black,
                        ),
                      ),
                      Text('Food')
                    ],
                  ),
                ]),
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
                              fixedSize: Size(60, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
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
                      children: [
                        ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(60, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Image.asset('Assets/Images/potatochips.png'),
                        ),
                        Text('Snack')
                      ],
                    ),
                  ],
                ),
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Food Menu',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
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
                    color: Color(0x303498DB)),
                padding: const EdgeInsets.all(8),
                child: Stack(children: [
                  Text(
                    'Burgers',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('Assets/Images/hamburger.png'),
                ])),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0x309B59B6)),
                padding: const EdgeInsets.all(8),
                child: Stack(children: [
                  Text(
                    'Pizza',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('Assets/Images/pizza.png'),
                ])),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0x303498DB)),
                padding: const EdgeInsets.all(8),
                child: Stack(children: [
                  Text(
                    'BBQ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('Assets/Images/BBQ.png'),
                ])),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0x309B59B6)),
                padding: const EdgeInsets.all(8),
                child: Stack(children: [
                  Text(
                    'Fruit',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('Assets/Images/fruit.png'),
                ])),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0x303498DB)),
                padding: const EdgeInsets.all(8),
                child: Stack(children: [
                  Text(
                    'Sushi',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('Assets/Images/sushi.png'),
                ])),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0x309B59B6)),
                padding: const EdgeInsets.all(8),
                child: Stack(children: [
                  Text(
                    'Noodle',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('Assets/Images/noodle.png'),
                ])),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Near Me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: TextButton(onPressed: null, child: Text('View all')))
        ]),
        ListView(shrinkWrap: true, children: [
          Column(children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Image.asset('Assets/Images/restoran.png')),
                SizedBox(
                  width: 20,
                ),
                Column(children: [
                  Text(
                    'Dapur Ijah Restaurant',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Row(children: [
                    Icon(Icons.location_on),
                    Text('13 th street, 46 W 12th St, NY'),
                  ]),
                  Row(children: [
                    Icon(Icons.watch_later_outlined),
                    Text('3 min - 1.1 km'),
                  ]),
                ]),
              ],
            ),
          ])
        ])
      ]),
    ]);
  }
}

class Orderpage extends StatelessWidget {
  const Orderpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Review Food',
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
        body: Container(
          padding: EdgeInsets.only(top: 30, left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('Assets/Images/restoran.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text('Dogmie jagong tutung'),
                      Row(
                        children: [
                          Image.asset('Assets/Images/like.png'),
                          Text('999+ |'),
                          Image.asset('Assets/Images/dislike.png'),
                          Text('93+')
                        ],
                      ),
                      Text(
                        '\$99.99',
                        style: TextStyle(color: Color(0xff2ECC71)),
                      ),
                    ],
                  ),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Image.asset('Assets/Images/dislike.png')),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Image.asset('Assets/Images/like.png')),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('Assets/Images/restoran.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text('Dogmie jagong tutung'),
                      Row(
                        children: [
                          Image.asset('Assets/Images/like.png'),
                          Text('999+ |'),
                          Image.asset('Assets/Images/dislike.png'),
                          Text('93+')
                        ],
                      ),
                      Text(
                        '\$99.99',
                        style: TextStyle(color: Color(0xff2ECC71)),
                      )
                    ],
                  ),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Image.asset('Assets/Images/dislike.png')),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Image.asset('Assets/Images/like.png')),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('Assets/Images/restoran.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text('Dogmie jagong tutung'),
                      Row(
                        children: [
                          Image.asset('Assets/Images/like.png'),
                          Text('999+ |'),
                          Image.asset('Assets/Images/dislike.png'),
                          Text('93+')
                        ],
                      ),
                      Text(
                        '\$99.99',
                        style: TextStyle(color: Color(0xff2ECC71)),
                      )
                    ],
                  ),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Image.asset('Assets/Images/dislike.png')),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Image.asset('Assets/Images/like.png')),
                ],
              ),
              SizedBox(
                height: 250,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffD35400),
                      onPrimary: Colors.white,
                      minimumSize: Size(330, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55))),
                  child: Text('Send'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}

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

class Creditcardpage extends StatelessWidget {
  const Creditcardpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Add Credit Card',
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('Assets/Images/kredit.png'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Bank name',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              Text(
                'AZRAEN Bank',
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Your name',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              Text('Itoh'),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Card Number',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              Text('4444 3784 1380 6739'),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Data',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              Text('02/22'),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'CVV',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              Text('877'),
            ]),
            SizedBox(
              height: 200,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffD35400),
                    onPrimary: Colors.white,
                    minimumSize: Size(330, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(55))),
                child: Text('Add'),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
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

class Voucherpage extends StatelessWidget {
  const Voucherpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'My Voucher',
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
        body: Container(
          padding: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffECF0F1)),
                      child: Image.asset('Assets/Images/voucher.png')),
                  Column(
                    children: [
                      Text('Sale off 30% for Pizza'),
                      Row(children: [
                        Icon(Icons.watch_later_outlined),
                        Text('Apr 10 - Apr 30'),
                      ]),
                      Text(
                        '11 days left',
                        style: TextStyle(color: Color(0xffE74C3C)),
                      ),
                    ],
                  ),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Icon(Icons.check, color: Colors.white)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffECF0F1)),
                      child: Image.asset('Assets/Images/voucher.png')),
                  Column(
                    children: [
                      Text('Sale off 30% for Pizza'),
                      Row(children: [
                        Icon(Icons.watch_later_outlined),
                        Text('Apr 10 - Apr 30'),
                      ]),
                      Text(
                        '11 days left',
                        style: TextStyle(color: Color(0xffE74C3C)),
                      )
                    ],
                  ),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Icon(Icons.check, color: Colors.white)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffECF0F1)),
                      child: Image.asset('Assets/Images/voucher.png')),
                  Column(
                    children: [
                      Text('Sale off 30% for Pizza'),
                      Row(children: [
                        Icon(Icons.watch_later_outlined),
                        Text('Apr 10 - Apr 30'),
                      ]),
                      Text(
                        '11 days left',
                        style: TextStyle(color: Color(0xffE74C3C)),
                      )
                    ],
                  ),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      onPressed: null,
                      child: Icon(Icons.check, color: Colors.white)),
                ],
              ),
              SizedBox(
                height: 270,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffD35400),
                      onPrimary: Colors.white,
                      minimumSize: Size(330, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55))),
                  child: Text(
                    'Send',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}
