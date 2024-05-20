import 'package:book_app/book.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage({super.key, required this.book});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.name),
      ),
      body: ListView(children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(book.image),
              fit: BoxFit.cover,
              ),
          ),
        )
      ],)
    );
  }

  Widget bookInfo(String value, String info) {
    return Column(children: [
      Text (
        value,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      Text(
        info,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ],);
  }
}