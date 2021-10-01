import 'package:flutter/material.dart';
import 'package:movie_apps/presentation/appbar/appbar_home.dart';
import 'package:movie_apps/presentation/home/post/post_film.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBarHome(tabController: _tabController),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: FilmWidget(),
          ),
          Center(
            child: Text("Trains"),
          ),
          Center(
            child: Text("Hotels"),
          ),
        ],
      ),
    );
  }
}
