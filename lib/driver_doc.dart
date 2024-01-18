import 'package:flutter/material.dart';

class DriverDoc extends StatefulWidget {
  const DriverDoc({super.key});

  @override
  State<DriverDoc> createState() => _DriverDocState();
}

class _DriverDocState extends State<DriverDoc> {
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
      body: SingleChildScrollView(
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
                  'Upload all documents to activate your account',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                license(),
                profile_info(),
                vehicleRC(),
                aadhaar(),
                SizedBox(
                  height: 90,
                ),
                buttonDoc(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//driver license of the driver
Widget license() {
  return Container(
    height: 100,
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 7,
        shadowColor: Colors.black,
        color: Colors.white,
        child: ListTile(
          onTap: () {},
          minVerticalPadding: -1,
          title: Text(
            'Driving License',
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(
            'Upload Now',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color.fromRGBO(255, 211, 0, 0.8).withOpacity(1)),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
          tileColor: Colors.white,
          dense: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
  );
}

//profile info of driver
Widget profile_info() {
  return Container(
    height: 100,
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 7,
        shadowColor: Colors.black,
        color: Colors.white,
        child: ListTile(
          onTap: () {},
          minVerticalPadding: -1,
          title: Text(
            'Profile Info',
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(
            'Upload Now',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color.fromRGBO(255, 211, 0, 0.8).withOpacity(0.8)),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
          tileColor: Colors.white,
          dense: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
  );
}

//vehicle rc of driver
Widget vehicleRC() {
  return Container(
    height: 100,
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 7,
        shadowColor: Colors.black,
        color: Colors.white,
        child: ListTile(
          onTap: () {},
          minVerticalPadding: -1,
          title: Text(
            'Vehicle RC',
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(
            'Upload Now',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color.fromRGBO(255, 211, 0, 0.8).withOpacity(0.8)),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
          tileColor: Colors.white,
          dense: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
  );
}

//aadhaar of driver
Widget aadhaar() {
  return Container(
    height: 100,
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 7,
        shadowColor: Colors.black,
        color: Colors.white,
        child: ListTile(
          onTap: () {},
          minVerticalPadding: -1,
          title: Text(
            'Aadhaar/PAN card',
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(
            'Upload Now',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color.fromRGBO(255, 211, 0, 0.8).withOpacity(0.8)),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
          tileColor: Colors.white,
          dense: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
  );
}

Widget buttonDoc() {
  return SizedBox(
    height: 60,
    width: 380,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {},
      child: const Text(
        'Submit',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
