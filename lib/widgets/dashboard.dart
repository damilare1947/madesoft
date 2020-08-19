import 'package:flutter/material.dart';
import 'package:madesoft/provider/data.dart';
import 'package:madesoft/widgets/card_item.dart';
import 'package:provider/provider.dart';
import 'dart:async';

ProductServices plans = ProductServices();
//ProductService plan = ProductService();

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabMain();
  }
}

class TabMain extends StatefulWidget {
  @override
  _TabMainState createState() => _TabMainState();
}

class _TabMainState extends State<TabMain> with SingleTickerProviderStateMixin {
  AnimationController controller;

  secondString() {
    Duration duration = controller.duration * controller.value;
    var seconds = '${(duration.inSeconds % 60).toString().padLeft(
          2,
        )}';
    return seconds;
  }

  @override
  void initState() {
    // TODO: implement initState
    controller = controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 8),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final loadedProduct = Provider.of<ProductServices>(context);
    final width = MediaQuery.of(context).size.width;
    return Container(
        color: Color(0xffF5F3F8),
        child: CustomScrollView(slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500.0,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 3 / 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => card(width),
              childCount: 1,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250.0,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 4 / 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => ChangeNotifierProvider.value(
                  value: loadedProduct.products[index], child: CardItem()),
              childCount: loadedProduct.products.length,
            ),
          ),
        ]));
  }

  card(width) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Today\s Transaction',
              style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff050505),
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                '15 June 2020',
                style: TextStyle(fontSize: 8, color: Color(0xff707070)),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Text('N0.00',
                        style:
                            TextStyle(color: Color(0xff050505), fontSize: 40)),
                    Text('Sales',
                        style: TextStyle(
                            color: Color(0xff050505),
                            fontSize: 13,
                            fontWeight: FontWeight.w500))
                  ],
                )),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 20,
                  width: width * 0.6,
                  child: LinearProgressIndicator(
                    backgroundColor: Color(0xffFDBCD4),
                    value: 0.7,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Text('N0.00',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500)),
                    Text('Profit',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500))
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 20,
                  width: width * 0.5,
                  child: LinearProgressIndicator(
                    backgroundColor: Color(0xffFDBCD4),
                    value: 0.5,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Text('N0.00',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500)),
                    Text('Expenses',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500))
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
