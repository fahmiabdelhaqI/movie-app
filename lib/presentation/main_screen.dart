// import 'package:flutter/material.dart';
// import 'package:movie_apps/presentation/home/home_screen.dart';
// import 'package:movie_apps/presentation/profile/profile_screen.dart';

// enum SelectedBody { home, search, favorite, profile }

// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);
//   // static const String routeName = '/';

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   late SelectedBody selectedBody;

//   @override
//   void initState() {
//     super.initState();
//     selectedBody = SelectedBody.home;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _getSelectedBody(selectedBody),
//       bottomNavigationBar: BottomNavigationBar(
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         onTap: (selectedIndex) {
//           setState(() {
//             switch (selectedIndex) {
//               case 0:
//                 selectedBody = SelectedBody.home;
//                 break;
//               case 1:
//                 selectedBody = SelectedBody.search;
//                 break;
//               case 2:
//                 selectedBody = SelectedBody.favorite;
//                 break;
//               case 3:
//                 selectedBody = SelectedBody.profile;
//                 break;
//               default:
//                 selectedBody = SelectedBody.home;
//                 break;
//             }
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search_outlined),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border_outlined),
//             label: 'Favorite',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline_rounded),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _getSelectedBody(SelectedBody selectedBody) {
//     switch (selectedBody) {
//       case SelectedBody.home:
//         return const HomeScreen();
//       case SelectedBody.search:
//         return const Center(child: Text('Search'));
//       case SelectedBody.favorite:
//         return const Center(child: Text('Favorite'));
//       case SelectedBody.profile:
//         return const ProfileScreen();
//       default:
//         return const SizedBox.shrink();
//     }
//   }
// }
