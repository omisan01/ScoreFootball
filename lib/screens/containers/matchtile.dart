import 'package:flutter/material.dart';
import 'package:football_app/models/live_match.dart';


Widget matchTile(LiveMatch match) {
  var homeGoal = match.goal.home;
  var awayGoal = match.goal.away;
  if(homeGoal == null) homeGoal = 0;
  if(awayGoal == null) awayGoal = 0;

  return Container(
    margin: EdgeInsets.symmetric(vertical: 12),
    child: Column(
      children: [
        Text("${match.fixture.status.elapsedTime.toString()} '" , style: TextStyle(fontWeight: FontWeight.bold),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                match.home.name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Image.network(
              match.home.logoUrl,
              width: 36,
            ),
            Expanded(
              child: Text(
                "$homeGoal - $awayGoal",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Image.network(
              match.away.logoUrl,
              width: 36,
            ),
            Expanded(
              child: Text(
                match.away.name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
