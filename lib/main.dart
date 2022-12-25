import 'package:flight_booking/pages/boarding_pass/boarding_pass_page.dart';
import 'package:flight_booking/pages/flight_booking/flight_search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BoardingPass());
  }
}
