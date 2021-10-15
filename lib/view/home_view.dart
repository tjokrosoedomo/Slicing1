import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

bool _tapped1 = true;
bool _tapped2 = true;
bool _tapped3 = true;
bool _tapped4 = true;

class _HomepageState extends State<Homepage> {
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
                        onPressed: () => setState (() =>
                          _tapped1 = !_tapped1 || !_tapped2 || !_tapped3 || !_tapped4
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: _tapped1 ? Color(0xffECF0F1) : Color(0xffD35400),
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
                        onPressed: () => setState (() =>
                        _tapped2 = !_tapped2 || !_tapped1 || !_tapped3 || !_tapped4
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: _tapped2 ? Color(0xffECF0F1) : Color(0xffD35400),
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
                          onPressed: () => setState (() =>
                          _tapped3 = !_tapped3 || !_tapped1 || !_tapped2 || !_tapped4
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: _tapped3 ? Color(0xffECF0F1) : Color(0xffD35400),
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
                          onPressed: () => setState (() =>
                          _tapped4 = !_tapped4 || !_tapped1 || !_tapped2 || !_tapped3
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: _tapped4 ? Color(0xffECF0F1) : Color(0xffD35400),
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

