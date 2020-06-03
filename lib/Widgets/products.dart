import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

TextEditingController _pizzaCountController=TextEditingController();
TextEditingController _vadaPavCountController=TextEditingController();
TextEditingController _coldCoffeCountController=TextEditingController();
TextEditingController _teaCountController=TextEditingController();

Widget pizzaCard() {
  return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),

        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(8.0, 8))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/Icons/pizzaIcon.png'))),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Pizza",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        letterSpacing: 5),
                  ),
                )
              ],
            ),
            Text(
              "Date :  ${DateFormat('dd-MM-yyyy').format(DateTime.now())}",
              style: TextStyle(letterSpacing: 4),
            ),
            Text(
              'Place Pizza Order',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  letterSpacing: 4),
            ),
            Container(
              width: 50,
              child: TextField(
                controller: _pizzaCountController,
                keyboardType: TextInputType.number,

                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                expands: false,
                //  keyboardType: Keyboard,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.red,
                ),
                onPressed: () {}),
            Text(
              "Todays Pizza Orders = 0",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto',
                  letterSpacing: 2),
            )
          ],
        ),
      ));
}

Widget vadaPavCard() {
  return Container(
      margin: EdgeInsets.all(30),
      
      decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),

        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(8.0, 8))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/Icons/VadaPavicon.jpg'))),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Vada Pav",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        letterSpacing: 5),
                  ),
                )
              ],
            ),
            Text(
              "Date :  ${DateFormat('dd-MM-yyyy').format(DateTime.now())}",
              style: TextStyle(letterSpacing: 4),
            ),
            Text(
              'Place Vada Pav Order',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  letterSpacing: 4),
            ),
            Container(
              width: 50,
              child: TextField(
                controller: _vadaPavCountController,
                keyboardType: TextInputType.number,

                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                expands: false,
                //  keyboardType: Keyboard,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.red,
                ),
                onPressed: () {}),
            Text(
              "Todays Vada Pav Orders = 0",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto',
                  letterSpacing: 2),
            )
          ],
        ),
      ));
}

Widget coldCoffeCard() {
  return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),

        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(8.0, 8))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/Icons/coldCoffeicon.png'))),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Cold Coffee",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        letterSpacing: 5),
                  ),
                )
              ],
            ),
            Text(
              "Date :  ${DateFormat('dd-MM-yyyy').format(DateTime.now())}",
              style: TextStyle(letterSpacing: 4),
            ),
            Text(
              'Place Cold Coffee Order',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  letterSpacing: 4),
            ),
            Container(
              width: 50,
              child: TextField(
                controller: _coldCoffeCountController,
                keyboardType: TextInputType.number,
                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                expands: false,
                //  keyboardType: Keyboard,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.red,
                ),
                onPressed: () {}),
            Text(
              "Todays Cold Coffee Orders = 0",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto',
                  letterSpacing: 2),
            )
          ],
        ),
      ));
}

Widget teaCard() {
  return Container(
    // height: 10,
    // width: 10,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),

        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(8.0, 8))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/Icons/teaIcon.png'))),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Tea",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        letterSpacing: 5),
                  ),
                )
              ],
            ),
            Text(
              "Date :  ${DateFormat('dd-MM-yyyy').format(DateTime.now())}",
              style: TextStyle(letterSpacing: 4),
            ),
            Text(
              'Place Tea Order',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  letterSpacing: 4),
            ),
            Container(
              width: 50,
              child: TextField(
                controller: _teaCountController,
                keyboardType: TextInputType.number,
                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                expands: false,
                //  keyboardType: Keyboard,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.red,
                ),
                onPressed: () {
                  print("object");
                  print("${_teaCountController.text}");
                }),
            Text(
              "Todays Tea Orders = 0",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto',
                  letterSpacing: 2),
            )
          ],
        ),
      ));
}