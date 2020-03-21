import 'package:albertoprofile/quote.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List <Quote> quotes = [
    Quote('Be yourself', 'Alberto'),
    Quote('Hello World', 'Alberto'),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote)=> QuoteCard(
            quote:quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
                //REMOVE the actual quote so here we define the function
              });
          }
        )).toList(),//We use toList because children expect a List of Widgets
        //It's going to do cycle throw the data
        //and perform a function returning a Text Widget (in this case)
      ),
    );
  }
}

