import 'package:flutter/material.dart';

class CustomerProfileScreen extends StatefulWidget {
  const CustomerProfileScreen({super.key});

  @override
  State<CustomerProfileScreen> createState() => _CustomerProfileScreenState();
}

class _CustomerProfileScreenState extends State<CustomerProfileScreen> {
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
                  'Profile Info',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              customerProfileImage(),
              SizedBox(
                height: 50,
              ),
              customerName(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
              ),
              customerProfilebutton(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customerProfileImage() {
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

Widget customerName() {
  return const TextField(
    decoration: InputDecoration(
      suffixIcon: Icon(
        Icons.info,
        color: Colors.lightBlue,
      ),
      labelText: 'Name',
      //hintText: 'hint text',
      //helperText: 'eg: TATA Tiago',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(9)),
      ),
    ),
  );
}

Widget customerProfilebutton() {
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
