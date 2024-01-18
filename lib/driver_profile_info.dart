import 'package:flutter/material.dart';
import 'package:pro/driver_license_screen.dart';

class ProfileInfoPage extends StatefulWidget {
  const ProfileInfoPage({super.key});

  @override
  State<ProfileInfoPage> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfoPage> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(
                  'Driver Info',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              profileImage(),
              SizedBox(
                height: 50,
              ),
              firstName(),
              SizedBox(
                height: 10,
              ),
              lastName(),
              SizedBox(
                height: 10,
              ),
              phoneNumber(),
              SizedBox(
                height: 180,
              ),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget profileImage() {
  return CircleAvatar(
    radius: 58,
    backgroundImage: AssetImage("assets/png-2757379_640.png"),
    child: Stack(children: [
      Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.white70,
          child: Icon(Icons.camera),
        ),
      ),
    ]),
  );
}

Widget firstName() {
  return const TextField(
    decoration: InputDecoration(
      suffixIcon: Icon(
        Icons.info,
        color: Colors.lightBlue,
      ),
      labelText: 'First Name',
      //hintText: 'hint text',
      //helperText: 'eg: TATA Tiago',
      border: OutlineInputBorder(),
    ),
  );
}

Widget lastName() {
  return const TextField(
    decoration: InputDecoration(
      suffixIcon: Icon(
        Icons.info,
        color: Colors.lightBlue,
      ),
      labelText: 'Last Name',
      //hintText: 'hint text',
      //helperText: 'eg: TATA Tiago',
      border: OutlineInputBorder(),
    ),
  );
}

Widget phoneNumber() {
  return const TextField(
    decoration: InputDecoration(
      suffixIcon: Icon(
        Icons.info,
        color: Colors.lightBlue,
      ),
      labelText: 'Phone Number',
      //hintText: 'hint text',
      helperText: 'eg: +91 1234567891',
      border: OutlineInputBorder(),
    ),
  );
}
