import 'package:country_json_data/Screen/DetailScreen/DetailScreen.dart';
import 'package:country_json_data/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:country_json_data/Screen/Home/View/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'detail': (context) => DetailScreen(),
        },
      ),
    ),
  );
}
