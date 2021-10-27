import 'package:flutter/material.dart';
import 'package:shop/views/products_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsOverviewPage(),
    );
  }
}
