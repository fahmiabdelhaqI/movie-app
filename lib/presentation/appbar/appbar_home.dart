import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.network(
        'https://cdn.discordapp.com/attachments/884972377086234634/892573774011068497/Logo.png',
        height: 45,
        width: 45,
      ),
      actions: const [
        Icon(Icons.search_outlined),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.notifications_none_outlined),
        SizedBox(
          width: 20,
        ),
      ],
      bottom: TabBar(
        controller: _tabController,
        indicatorColor: Colors.red,
        isScrollable: true,
        tabs: const [
          Tab(
            text: 'All',
          ),
          Tab(
            text: 'Film',
          ),
          Tab(
            text: 'Serial',
          ),
        ],
      ),
    );
  }
}
