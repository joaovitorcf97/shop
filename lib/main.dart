import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/views/cart_page.dart';
import 'package:shop/views/product_detail_page.dart';
import 'package:shop/views/products_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductList()),
        ChangeNotifierProvider(create: (_) => Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop',
        theme: tema.copyWith(
          colorScheme: tema.colorScheme.copyWith(
            primary: Colors.purple,
            secondary: Colors.deepOrange,
          ),
        ),
        home: ProductsOverviewPage(),
        routes: {
          AppRoutes.productDetail: (ctx) => ProductDetailPage(),
          AppRoutes.cart: (ctx) => CartPage(),
        },
      ),
    );
  }
}
