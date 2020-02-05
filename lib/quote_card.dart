import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlueAccent[50],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Author: ' + quote.author,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[900],
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Flexible(fit: FlexFit.tight, child: SizedBox()),
                FloatingActionButton(
                  onPressed: delete,
                  child: Icon(Icons.delete_outline),
                  backgroundColor: Colors.amber[600],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}