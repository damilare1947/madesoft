import 'package:flutter/material.dart';
import 'package:madesoft/provider/data.dart';
import 'package:provider/provider.dart';

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductService>(context);
    return Card(
        child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Image.asset(product.image,
              fit: BoxFit.contain, width: 50, height: 50),
          SizedBox(height: 10),
          Text(product.text, style: TextStyle(fontSize: 17)),
        ],
      ),
    ));
  }
}
