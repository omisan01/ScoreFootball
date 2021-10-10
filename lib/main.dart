import 'package:flutter/material.dart';
import 'package:football_app/screens/tabscreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score Football',
      theme:ThemeData(
        accentColor: Color(0xFFE31A1A),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ), 
        visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    //home: MyHomeScreen(),
    routes: {
      '/' : (ctx) => BottomTabScreen(),
    },
    );
  }
}