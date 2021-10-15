import 'package:flutter/material.dart';

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

