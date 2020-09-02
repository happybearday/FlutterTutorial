import 'package:flutter/material.dart';
import "quote.dart";
void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}
class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes=[
    Quote(author: "Oscar Wilde", text:'Be yourself; everyone else is already taken'),
    Quote(author: "Oscar Wilde", text:'I have nothing to declare except my genius'),
    Quote(author: "Oscar Wilde", text:'The truth is rarely pure and never simple'),
  ];

  List<String> authors = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text("${quote.author} - ${quote.text}")).toList(),
      ),
    );
  }
}
