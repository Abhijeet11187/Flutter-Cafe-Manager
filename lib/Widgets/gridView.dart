import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/Widgets/products.dart';

class Gridview extends StatefulWidget {
  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // itemCount: 6,
        children: <Widget>[
          teaCard(),
                    vadaPavCard(),
          coldCoffeCard(),
          pizzaCard(),


        ],
        // gridDelegate:
            // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        // scrollDirection: ScrollDirection.forward,
        // itemBuilder: (context, index) {
        //   return Container(
        //       margin: EdgeInsets.all(20),
        //       decoration: BoxDecoration(
        //         boxShadow: <BoxShadow>[
        //           BoxShadow(
        //               color: Colors.grey,
        //               blurRadius: 6,
        //               spreadRadius: 1,
        //               offset: Offset(8.0, 8))
        //         ],
        //       ),
        //       child: Card(
        //         child: Stack(
        //           children: <Widget>[
        //              Opacity(
        //         opacity: 0.2,
        //         child: Image.asset('assets/Icons/pizzaIcon.png')),
        //         Center(child: Text("Vada Pav"))
        //           ],
        //         )
        //       )
        //       );
        // },
      ),
    );
  }
}
