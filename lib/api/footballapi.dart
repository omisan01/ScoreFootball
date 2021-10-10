import 'dart:convert';


import 'package:http/http.dart' ;
import '/models/live_match.dart';



class FootballApi{
  static const url ="https://v3.football.api-sports.io/";
   
   static const headers = {
   'x-rapidapi-host' : 'v3.football.api-sports.io',
	'x-rapidapi-key' : "7431b52c3a2fb6ddc09e13e55ed7a459"};
    // ignore: missing_return
    static Future<List<LiveMatch>> getAllMatches() async{
      final apiUrl = Uri.parse(url + "fixtures?live=all");
    Response res = await get( apiUrl , headers: headers);
    // ignore: unused_local_variable
    List<LiveMatch> matches = [];

    if(res.statusCode == 200){
     var body = jsonDecode(res.body);
      List<dynamic>matchesList = body['response'];
      print("Api service : $body");
      List<LiveMatch> matches = matchesList.map((dynamic item) => LiveMatch.fromJson(item)).toList();
      return matches;
  }
  }  
  }
    
