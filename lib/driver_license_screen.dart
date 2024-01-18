import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DrivingLicenseScreen extends StatefulWidget {
  const DrivingLicenseScreen({super.key});

  @override
  State<DrivingLicenseScreen> createState() => _DrivingLicenseState();
}

class _DrivingLicenseState extends State<DrivingLicenseScreen> {
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
                'Upload DL Images',
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
                'Enter DL number',
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
      labelText: 'DL Number',
      //hintText: 'hint text',
      helperText: 'eg: TS1298765412345',
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
