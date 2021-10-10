import 'package:flutter/material.dart';
import 'package:football_app/screens/containers/matchtile.dart';
import '/models/live_match.dart';

Widget pageBody(List<LiveMatch> allmatches) {
  return Column(
    children: [  
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Text(
                    "MATCHES",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                 child:ListView.builder(
                            itemCount: allmatches.length,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 2.0,
                                margin: EdgeInsets.only(bottom: 15),
                                child: Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: matchTile(allmatches[index]),
                                ),
                              );
                            },
                          ),
                        ),             
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
