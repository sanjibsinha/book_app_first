import 'package:flutter/material.dart';
import '../controllers/book_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}

class BooksOverviewScreen extends StatefulWidget {
  const BooksOverviewScreen({Key? key}) : super(key: key);

  @override
  _BooksOverviewScreenState createState() => _BooksOverviewScreenState();
}

class _BooksOverviewScreenState extends State<BooksOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Shop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: const Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOptions.Favorites,
              ),
              const PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              ),
            ],
          ),
        ],
      ),
      body: BooksGrid(showFavs: _showOnlyFavorites),
    );
  }
}
