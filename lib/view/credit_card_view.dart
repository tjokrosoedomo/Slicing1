import 'package:flutter/material.dart';

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

