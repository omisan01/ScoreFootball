import 'package:flutter/material.dart';
import 'package:football_app/api/footballapi.dart';
import 'package:football_app/models/live_match.dart';
import 'package:football_app/screens/containers/livescorebody.dart';
import 'package:football_app/screens/containers/matchtile.dart';

class LiveScoresScreen extends StatefulWidget {

  @override
  _LiveScoresScreenState createState() => _LiveScoresScreenState();
}

class _LiveScoresScreenState extends State<LiveScoresScreen> {
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
       textTheme: Theme.of(context).textTheme,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body:FutureBuilder(
        future: FootballApi.getAllMatches(),
        builder: (context,snapshot){
          if (snapshot.hasData){
            print((snapshot.data).length);
            return pageBody(snapshot.data);
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          },
      ),  
    );
  }
}