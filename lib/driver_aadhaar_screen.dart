import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AadhaarScreen extends StatefulWidget {
  const AadhaarScreen({super.key});

  @override
  State<AadhaarScreen> createState() => _AadhaarScreenState();
}

class _AadhaarScreenState extends State<AadhaarScreen> {
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
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: [
            Container(
              child: Text(
                'Upload Aadhaar Images',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
            ),
            image1(),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Enter Aadhaar number',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            textDL(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            button(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

Widget image1() {
  return Container(
    height: 150,
    child: Row(
      children: [
        Expanded(
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(20),
            dashPattern: [10, 10],
            color: Colors.grey,
            strokeWidth: 1,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.white.withOpacity(0.8),
              //elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      leading: Icon(
                        Icons.add_a_photo_rounded,
                        color: Colors.lightBlue,
                      ),
                      title: Text(
                        'FRONT',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      tileColor: Colors.white,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(horizontal: 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(20),
            dashPattern: [10, 10],
            color: Colors.grey,
            strokeWidth: 1,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.white.withOpacity(0.8),
              //elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(17),
                    child: ListTile(
                      leading: Icon(
                        Icons.add_a_photo_rounded,
                        color: Colors.lightBlue,
                      ),
                      title: Text(
                        'BACK',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      tileColor: Colors.white,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(horizontal: 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget textDL() {
  return const TextField(
    decoration: InputDecoration(
      suffixIcon: Icon(
        Icons.info,
        color: Colors.lightBlue,
      ),
      labelText: 'Aadhaar Number',
      //hintText: 'hint text',
      helperText: 'eg: 1234 5678 1234',
      border: OutlineInputBorder(),
    ),
  );
}

Widget button() {
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
