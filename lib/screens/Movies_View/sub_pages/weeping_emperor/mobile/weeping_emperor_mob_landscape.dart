import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:website/widgets/movie_details/movie_details_potrait.dart';

import 'package:website/widgets/navigation_bar/navigation_bar.dart';
import 'package:website/widgets/navigation_drawer/navigation_drawer.dart';

class WeepingEmperorMobileLandscape extends StatelessWidget {
  final String filePath;
  final String posterPath;
  const WeepingEmperorMobileLandscape({Key key, this.filePath, this.posterPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: NavigationBar(),
      ),
      drawer: NavigationDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(105, 124, 194, 1),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black]),
            ),
          ),
          MovieDetailsPotrait(
            filePath: filePath,
            posterPath: posterPath,
            bodyFontSize: 0.025,
            titleFontSize: 0.06,
            buttonHeight: 40,
          ),
        ],
      ),
    );
  }
}
