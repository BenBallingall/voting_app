import 'package:flutter/material.dart';
import 'package:voting_app/route_generator.dart';
import 'package:voting_app/api/aus_bills.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class AllIssuesPage extends StatefulWidget {

  @override
  AllIssuesPageState createState()=> new AllIssuesPageState();
}



class AllIssuesPageState extends State<AllIssuesPage> {
  List data;
  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var b = await fetchBills();
    setState(() {
      data = b;
    });
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Issues Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text(data[5]["Short Title"]),
              onPressed: () {
                // Pushing a named route
                Navigator.of(context).pushNamed(
                  '/issue',
                  arguments: data[5]["Short Title"].toString()  + "\n\n" + data[5]["URL"].toString(),
                );
              },
            ),
            RaisedButton(
              child: Text(data[22]["Short Title"]),
              onPressed: () {
                // Pushing a named route
                Navigator.of(context).pushNamed(
                  '/issue',
                  arguments: data[22]["Short Title"].toString()  + "\n\n" + data[22]["URL"].toString(),
                );
              },
            ),
            RaisedButton(
              child: Text(data[33]["Short Title"]),
              onPressed: () {
                // Pushing a named route
                Navigator.of(context).pushNamed(
                  '/issue',
                  arguments: data[33]["Short Title"].toString() + "\n\n" + data[33]["URL"].toString(),
                );
              },
            ),
            RaisedButton(
              child: Text(data[8]["Short Title"]),
              onPressed: () {
                // Pushing a named route
                Navigator.of(context).pushNamed(
                  '/issue',
                  arguments: data[8]["Short Title"].toString() + "\n\n" + data[8]["URL"].toString(),
                );
              },
            ),
            RaisedButton(
              child: Text(data[9]["Short Title"]),
              onPressed: () {
                // Pushing a named route
                Navigator.of(context).pushNamed(
                  '/issue',
                  arguments: data[9]["Short Title"].toString()  + "\n\n" + data[9]["URL"].toString(),
                );
              },
            )
          ],
        ),
      ),
    );
  }

}