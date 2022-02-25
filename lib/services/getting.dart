import 'dart:convert';

import 'package:http/http.dart' as http;

List upcomingList = [];
List popularList = [];
List topratedList = [];
List nowplayingList = [];
List trendingList = [];


var upComing = Uri.parse(
    'https://api.themoviedb.org/3/movie/upcoming?api_key=37c8c0a46b117e6bff47da0735380ef2&language=en-US&page=1');
var toprated = Uri.parse(
    'https://api.themoviedb.org/3/movie/top_rated?api_key=37c8c0a46b117e6bff47da0735380ef2&language=en-US&page=1');
var nowplaying = Uri.parse(
    'https://api.themoviedb.org/3/movie/now_playing?api_key=37c8c0a46b117e6bff47da0735380ef2&language=en-US&page=1');
var popular = Uri.parse(
    'https://api.themoviedb.org/3/movie/popular?api_key=37c8c0a46b117e6bff47da0735380ef2&language=en-US&page=1');
var trending = Uri.parse(
    'https://api.themoviedb.org/3/trending/all/day?api_key=37c8c0a46b117e6bff47da0735380ef2');


Future upcomigFetching() async {
  var response = await http.get(upComing);
  Map data = json.decode(response.body);
  upcomingList = data['results'];
  return upcomingList;
}

Future popularFetching() async {
  var response = await http.get(popular);
  Map data = json.decode(response.body);
  popularList = data['results'];
  return popularList;
}

Future topratedFetching() async {
  var response = await http.get(toprated);
  Map data = json.decode(response.body);
  topratedList = data['results'];
  return topratedList;
}

Future nowplayingFetching() async {
  var response = await http.get(nowplaying);
  Map data = json.decode(response.body);
  nowplayingList = data['results'];
  return nowplayingList;
}

Future trendingFetching() async {
  var response = await http.get(trending);
  Map data = json.decode(response.body);
  trendingList = data['results'];
  return trendingList;
}

// Future latestFetching() async {
//   var response = await http.get(latest);
//   Map data = json.decode(response.body);
//   latestList = data['results'];
//   return latestList;
// }
