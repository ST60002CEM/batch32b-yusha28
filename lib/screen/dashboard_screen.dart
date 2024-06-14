// import 'package:flutter/material.dart';

// class DashboardScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'WorkWise',
//           style: TextStyle(
//               fontSize: 26.0,
//               color: Colors.green // Adjust the font size as desired
//               ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // Handle search action
//               print('Search button tapped');
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to the Dashboard!',
//           style: TextStyle(fontSize: 24.0),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         backgroundColor: Colors.green,
//         onTap: (index) {
//           // Handle bottom navigation item tap
//           print('Tapped index: $index');
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
