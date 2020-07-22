
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_flix/style/theme.dart' as Stye;
import 'package:my_flix/widgets/genres.dart';
import 'package:my_flix/widgets/now_playing.dart';
import 'package:my_flix/widgets/persons.dart';
import 'package:my_flix/widgets/top_movies.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Stye.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Stye.Colors.mainColor,
        centerTitle: true,
        leading: Icon(EvaIcons.menu2Outline, color: Colors.white),
        title: Text("Movie App"),
        actions: <Widget>[
          IconButton(icon: Icon(EvaIcons.searchOutline, color: Colors.white,), onPressed: null,)
        ],
      ),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen(),
          PersonList(),
          TopMovies()
        ],
      ),
    );
  }
}