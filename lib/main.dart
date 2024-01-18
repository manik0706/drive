import 'package:flutter/material.dart';
import 'package:pro/customer_profile.dart';
import 'package:pro/driver_aadhaar_screen.dart';
import 'package:pro/driver_doc.dart';
import 'package:pro/driver_info1.dart';
import 'package:pro/driver_license_screen.dart';
import 'package:pro/driver_profile_info.dart';
import 'package:pro/vehicle_rc_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomerProfileScreen(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           //elevation: 35,
//           //shadowColor: Colors.grey,
//           toolbarHeight: 80,

//           //automaticallyImplyLeading: false,
//           leading: const Align(
//             alignment: AlignmentDirectional(-1, 0),
            
//             child: Icon(
//               Icons.chevron_left,
//               color: Colors.black,
//               size: 30,
//             ),
//           ),
//           title: const Text(
//             'Account',
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             //mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Align(
//                 alignment: AlignmentDirectional(0, -1),
//                 child: Container(
//                   width: 160,
//                   height: 160,
//                   clipBehavior: Clip.antiAlias,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                   ),
//                   child: Image.network(
//                     'https://picsum.photos/seed/559/600',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'YOUR NAME',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 20),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'phone no./ gmail account',
//                 style:
//                     TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: EdgeInsets.zero,
//                 child: Card(
//                   elevation: 20,
//                   shadowColor: Colors.yellow,
//                   child: Column(
//                     //mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       ListTile(
//                         onTap: (){
                          
//                         },
//                         leading: Icon(
//                           Icons.settings_rounded,
                          
//                         ),
//                         title: Text(
//                           'PROFILE',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, color: Colors.black),
//                         ),
//                         trailing: Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.black,
//                           size: 20,
                          
//                         ),
//                         tileColor: Colors.yellow,
//                         dense: false,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.settings_rounded,
//                         ),
//                         title: Text(
//                           'WALLET',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, color: Colors.black),
//                         ),
//                         trailing: Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.black,
//                           size: 20,
//                         ),
//                         tileColor: Colors.yellow,
//                         dense: false,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.settings_rounded,
//                         ),
//                         title: Text(
//                           'ACTIVITY',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, color: Colors.black),
//                         ),
//                         trailing: Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.black,
//                           size: 20,
//                         ),
//                         tileColor: Colors.yellow,
//                         dense: false,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.settings_rounded,
//                         ),
//                         title: Text(
//                           'CONTACT US',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, color: Colors.black),
//                         ),
//                         trailing: Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.black,
//                           size: 20,
//                         ),
//                         tileColor: Colors.yellow,
//                         dense: false,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.settings_rounded,
//                         ),
//                         title: Text(
//                           'SETTING',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, color: Colors.black),
//                         ),
//                         trailing: Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.black,
//                           size: 20,
//                         ),
//                         tileColor: Colors.yellow,
//                         dense: false,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
