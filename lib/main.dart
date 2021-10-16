import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'views/book_overview_screen.dart';

/* import 'models/cart.dart';
import 'models/orders.dart'; */

import 'views/book_detail_screen.dart';
//import 'models/books.dart';
//import 'gridview_others/gridview_count.dart';
import 'gridview_others/gridview_extent.dart';

void main() {
  runApp(
    /* 
     */
    //GridviewCountExample(),
    GridViewExtent(),
  );
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Shop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Colors.deepOrange,
      ),
      home: const BooksOverviewScreen(),
      routes: {
        BookDetailScreen.routeName: (ctx) => const BookDetailScreen(),
        //CartScreen.routeName: (ctx) => CartScreen(),
      },
    );
  }
}
