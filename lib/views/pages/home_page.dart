import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class Result {
  final String resultPrompt;

  const Result({
    required this.resultPrompt,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(resultPrompt: json['result']);
  }
}
class _HomePageState extends State<HomePage> {
  Future<List<Result>> resultsFuture = getResults();

  static Future<List<Result>> getResults() async {
    const url = "127.0.0.1:5000/predict";
    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body);
    return body.map<Result>(Result.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Result>>(
        future: getResults(),
        builder: (context, snapshot) {
          final results = snapshot.data;

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: 
                  CircularProgressIndicator()
              );
            default:
              if (snapshot.hasError) {
                return Center(child: Text("Error has occured"),);
              }
              else {
                return buildResults(results);
              }
          }
        }
      )
    );
  }
  Widget buildResults(List<Result> results) => ListView.builder(
    itemBuilder: (context, index) {
      final result = results[index];
      
      return Text(Result.resultPrompt);
    }
  );
}
  /* TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Note',
                  ),
                ) */