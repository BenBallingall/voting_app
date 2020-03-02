import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

//https://2hqxgjv66f.execute-api.ap-southeast-2.amazonaws.com/dev/bills

Future<List> fetchBills() async {
//  final Connectivity _connectivity = new Connectivity();
//  var r = await _connectivity.checkConnectivity();
//  var check;
//  if (r == ConnectivityResult.mobile) {
//    print("mobile");
//    check = true;
//  } else if (r == ConnectivityResult.wifi) {
//    print("wifi");
//    check = true;
//  }else{
//    print("Not connected");
//    check = false;
//  }
//  return [check];
  final response = await http.get(
      'https://2hqxgjv66f.execute-api.ap-southeast-2.amazonaws.com/dev/bills');
  if (response.statusCode == 200) {
    final List listOfBills = json.decode(response.body);
    return listOfBills;
  } else {
    throw Exception('Failed to load bills');
  }
}


