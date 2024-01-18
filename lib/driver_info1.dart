//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:pro/driver_doc.dart';

class DriverInfo1 extends StatefulWidget {
  const DriverInfo1({super.key});

  @override
  State<DriverInfo1> createState() => _DriverInfo1State();
}

class _DriverInfo1State extends State<DriverInfo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(255, 211, 0, 1).withOpacity(0.6),
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Which type of vehicle do you use?',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bike(),
                auto(),
                car(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//bike widget
Widget bike() {
  return Container(
    height: 150,
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        shadowColor: Color.fromRGBO(255, 255, 232, 1),
        child: ListTile(
          onTap: () {
            //route to driver doc.
          },
          tileColor: Colors.white,
          minVerticalPadding: 25,
          //visualDensity: VisualDensity(vertical: 4),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          leading: Icon(
            Icons.two_wheeler,
            size: 50,
            color: Color.fromRGBO(255, 211, 0, 1),
          ),
          title: Text(
            'Bike',
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            size: 25,
          ),
        ),
      ),
    ),
  );
}

//auto widget

Widget auto() {
  return Container(
    height: 150,
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        shadowColor: Color.fromRGBO(255, 255, 232, 1),
        child: ListTile(
          onTap: () {},
          tileColor: Colors.white,
          minVerticalPadding: 25,
          //visualDensity: VisualDensity(vertical: 4),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          leading: Icon(
            color: Color.fromRGBO(255, 211, 0, 1),
            Icons.electric_rickshaw,
            size: 50,
          ),
          title: Text(
            'Auto',
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            size: 25,
          ),
        ),
      ),
    ),
  );
}

//car widget
Widget car() {
  return Container(
    height: 150,
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        shadowColor: Color.fromRGBO(255, 255, 232, 1),
        child: ListTile(
          onTap: () {},
          tileColor: Colors.white,
          minVerticalPadding: 25,
          //visualDensity: VisualDensity(vertical: 4),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          leading: Icon(
            color: Color.fromRGBO(255, 211, 0, 1),
            Icons.electric_car,
            size: 50,
          ),
          title: Text(
            'Car',
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            size: 25,
          ),
        ),
      ),
    ),
  );
}
