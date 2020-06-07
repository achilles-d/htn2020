import 'package:flutter/material.dart';
import 'card_item.dart';

// class CardScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Zomato Cards"),
//         backgroundColor: Colors.redAccent,
//       ),
//       body: detaiilsView(),
//           );
//         }
      
//   Widget detaiilsView() {

//   }

  class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
