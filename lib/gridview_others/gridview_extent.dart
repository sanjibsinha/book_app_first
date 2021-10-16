import 'package:flutter/material.dart';

class GridViewExtentExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Count Constructor"),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 2.0,
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 10.0,
          children: List.generate(
            Books.length,
            (index) {
              return Center(
                child: SelectBook(
                  book: Books[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Book {
  const Book({
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
}

const List<Book> Books = const <Book>[
  const Book(
    title: 'Home Decor Guide',
    icon: Icons.home,
  ),
  const Book(
    title: 'City Guide Map',
    icon: Icons.map,
  ),
  const Book(
    title: 'Phone Directory',
    icon: Icons.phone,
  ),
  const Book(
    title: 'Camera Accessories',
    icon: Icons.camera_alt,
  ),
  const Book(
    title: 'Car Setting Manual',
    icon: Icons.car_rental_outlined,
  ),
];

class SelectBook extends StatelessWidget {
  const SelectBook({
    Key? key,
    required this.book,
  }) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = TextStyle(
      fontFamily: 'Lato Bold',
      fontSize: 20,
      color: Colors.white,
    );
    return Card(
      color: Colors.red,
      child: ListView(
        children: <Widget>[
          Expanded(
            child: Icon(
              book.icon,
              size: 50.0,
              color: textStyle!.color,
            ),
          ),
          Text(
            book.title,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
