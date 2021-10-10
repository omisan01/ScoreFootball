import 'package:flutter/material.dart';
import 'package:football_app/models/leagues.dart';
import 'package:football_app/models/newsmodel.dart';
import 'package:football_app/screens/containers/home_main.dart';
import 'package:football_app/widgets/blogsdata.dart';
import 'package:google_fonts/google_fonts.dart';
import './containers/home_header.dart';

class MyHomeScreen extends StatelessWidget {
  final List<LeagueModel> leagues = [
    LeagueModel(
      id: 1,
      name: "Champions League",
      logo:
          "https://wwwimage-us.pplusstatic.com/base/files/seo/ucl_social_1200x627.jpg",
    ),
    LeagueModel(
      id: 2,
      name: "Laliga",
      logo:
          'https://www.sportsindiashow.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-04-at-12.25.59-PM.png',
    ),
    LeagueModel(
      id: 3,
      name: "Bundesliga",
      logo: "https://s.bundesliga.com/assets/img/30000/27160_imgw968.png",
    ),
    LeagueModel(
      id: 4,
      name: "Premier League",
      logo:
          "https://img.theculturetrip.com/1440x807/smart/wp-content/uploads/2016/08/premier_league_rebrands_designstudio_01.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Score',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            Text('Football'),
          ],
        ),
        centerTitle: true,
        textTheme: Theme.of(context).textTheme,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Leagues",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return CategoryTile(
                      leagues[index].logo,
                    );
                  },
                  itemCount: leagues.length,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Featured News",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return NewsTile(
                      imageUrl: newsBlog[index].urlToImage,
                      title: newsBlog[index].title,
                      description: newsBlog[index].description,
                    );
                  },
                  itemCount: newsBlog.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
