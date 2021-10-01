// import 'package:flutter/material.dart';
// import 'package:movie_apps/presentation/home/post/post_film.dart';

// class TabBarMovie extends StatelessWidget {
//   const TabBarMovie({
//     Key? key,
//     required TabController tabController,
//   })  : _tabController = tabController,
//         super(key: key);

//   final TabController _tabController;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TabBar(
//           controller: _tabController,
//           indicatorColor: Colors.red,
//           isScrollable: true,
//           tabs: const [
//             Tab(
//               text: 'All',
//             ),
//             Tab(
//               text: 'Film',
//             ),
//             Tab(
//               text: 'Serial',
//             ),
//           ],
//         ),
//         Expanded(
//           child: TabBarView(
//             controller: _tabController,
//             children: const [
//               Center(
//                 child: FilmWidget(),
//               ),
//               Center(
//                 child: Text("Trains"),
//               ),
//               Center(
//                 child: Text("Hotels"),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
