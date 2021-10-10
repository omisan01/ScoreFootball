import 'package:flutter/material.dart';

Widget goals(int expandedTime, int homeGoal, int awayGoal) {
  var home = homeGoal ;
  var away = awayGoal ;
  var elapsed = expandedTime;
  if(home == null) home = 0;
  if(away == null) away = 0;
  if(elapsed == null) elapsed = 0;
  
  return Expanded(
    child: Column(
      children: [
        Text(
          "$elapsed",
          style: TextStyle(fontSize: 30),
        ),
        Expanded(
            child: Center(
          child: Text(
            "$home - $away",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ))
      ],
    ),
  );
}
