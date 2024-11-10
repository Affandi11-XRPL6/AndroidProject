// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Puskesmas Queue System',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Puskesmas Queue System'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.person),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProfilePage()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _buildMenuButton(
//               context,
//               'Register',
//               Icons.assignment,
//               Colors.green,
//               RegisterPage(),
//             ),
//             SizedBox(height: 20),
//             _buildMenuButton(
//               context,
//               'My Queue',
//               Icons.queue,
//               Colors.orange,
//               MyQueuePage(),
//             ),
//             SizedBox(height: 20),
//             _buildMenuButton(
//               context,
//               'Doctor Schedule',
//               Icons.schedule,
//               Colors.blue,
//               DoctorSchedulePage(),
//             ),
//             SizedBox(height: 20),
//             _buildMenuButton(
//               context,
//               'Emergency',
//               Icons.warning,
//               Colors.red,
//               null,
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info),
//             label: 'Info',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.contact_page),
//             label: 'Contact',
//           ),
//         ],
//         onTap: (index) {
//           // Add navigation logic here based on the tapped item
//         },
//       ),
//     );
//   }

//   Widget _buildMenuButton(
//       BuildContext context, String title, IconData icon, Color color, Widget? page) {
//     return OutlinedButton.icon(
//       icon: Icon(icon, size: 24, color: color),
//       label: Text(title, style: TextStyle(fontSize: 18)),
//       style: OutlinedButton.styleFrom(
//         padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         side: BorderSide(color: color, width: 2),
//       ),
//       onPressed: () {
//         if (page != null) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => page),
//           );
//         } else {
//           showDialog(
//             context: context,
//             builder: (context) => AlertDialog(
//               title: Text('Emergency'),
//               content: Text('Call emergency services immediately!'),
//               actions: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Text('Close'),
//                 ),
//               ],
//             ),
//           );
//         }
//       },
//     );
//   }
// }

// class RegisterPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Register'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text('Form for registration will go here'),
//       ),
//     );
//   }
// }

// class MyQueuePage extends StatelessWidget {
//   final String queueNumber = "A-001";
//   final String estimatedTime = "15 minutes";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Queue'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Card(
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Your Queue Number:',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       queueNumber,
//                       style: TextStyle(
//                         fontSize: 50,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.orange,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       'Estimated Waiting Time:',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       estimatedTime,
//                       style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.green,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DoctorSchedulePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Doctor Schedule'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Card(
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Doctor schedule information will go here',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text('User profile details will go here'),
//       ),
//     );
//   }
// }
