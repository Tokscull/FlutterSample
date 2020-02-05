import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/quote_card.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Oskar',
        text: 'However distant she request behaved see nothing.'),
    Quote(author: 'Markiis',
        text: 'His followed carriage proposal entrance directly had elegance.'),
    Quote(author: 'Hunger', text: 'In friendship diminution instrument so.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.amber[600],
        ),
        body: Column(
          children: quotes.map((quote) =>
              QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                },
              )).toList(),
        )
    );
  }

}



