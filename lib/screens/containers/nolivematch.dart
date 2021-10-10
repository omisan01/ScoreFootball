import 'package:flutter/material.dart';

class NoLiveMatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets\images\schedule.png" , width: 150 , height: 100,),
            Text("No Live Matches right now!!")
          ],
        
      ),
    );
  }
}
