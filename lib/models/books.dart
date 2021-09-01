import 'package:flutter/material.dart';

import 'book.dart';

class Books with ChangeNotifier {
  final List<Book> _items = [
    Book(
      id: 'p1',
      title: 'Beginning Flutter With Dart',
      description: 'You can learn Flutter as well Dart.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/09/05/18/32/old-books-436498_960_720.jpg',
    ),
    Book(
      id: 'p2',
      title: 'Flutter State Management',
      description: 'Everything you should know about Flutter State.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg',
    ),
    Book(
      id: 'p3',
      title: 'WordPress Coding',
      description:
          'WordPress coding is not difficult, in fact it is interesting.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_960_720.jpg',
    ),
    Book(
      id: 'p4',
      title: 'PHP 8 Standard Library',
      description: 'PHP 8 Standard Library has made developers life easier.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/09/05/21/51/reading-925589_960_720.jpg',
    ),
    Book(
      id: 'p5',
      title: 'Better Flutter',
      description:
          'Learn all the necessary concepts of building a Flutter App.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/09/05/07/28/writing-923882_960_720.jpg',
    ),
    Book(
      id: 'p6',
      title: 'Discrete Mathematical Data Structures and Algorithm',
      description:
          'Discrete mathematical concepts are necessary to learn Data Structures and Algorithm.',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/11/19/21/14/glasses-1052023_960_720.jpg',
    ),
  ];
  // var _showFavoritesOnly = false;

  List<Book> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Book> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Book findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
