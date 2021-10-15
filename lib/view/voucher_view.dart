import 'package:flutter/material.dart';

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
