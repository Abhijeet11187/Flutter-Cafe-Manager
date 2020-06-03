import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/Widgets/gridView.dart';
import 'package:flutter_app/services/imageslidercontent.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: MediaQuery.of(context).size.height * 0.30,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: CarouselSlider(
                      options: CarouselOptions(autoPlay: true),
                      items: imageForSlider.map((image) {
                        return Builder(
                          builder: (BuildContext context) {
                            return GestureDetector(
                              onDoubleTap: () {
                                if (image ==
                                    'assets/PostiveThoughtsSlider/slider7.jpg') {
                                  print("Admin Pannel Open");
                                }
                              },
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(right: 10,left: 10),
                                  // margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(image, fit: BoxFit.fill))),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  )),
            )
          ];
        },
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.60,
          child: Center(
            child: Gridview(),
          ),
        ),
      ),
    );
  }
}
