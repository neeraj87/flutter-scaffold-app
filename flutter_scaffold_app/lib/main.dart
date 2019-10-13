import 'package:flutter/material.dart';

//import all pages/classes
import 'package:flutter_scaffold_app/pages/flipper_widget.dart';
import 'package:flutter_scaffold_app/pages/flare_animation.dart';
import 'package:flutter_scaffold_app/pages/fancy_fab.dart';
import 'package:flutter_scaffold_app/pages/sliver_appbar.dart';

//import widget
import 'package:flutter_scaffold_app/widgets/navigation_widget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent
      ),
      home: MyHomePage(),
      routes: {
        '/home' : (BuildContext context) => MyHomePage(),
        '/flipper' : (BuildContext context) => FlipperWidget(),
        '/flare' : (BuildContext context) => FlareAnimationWidget(),
        '/sliver' : (BuildContext context) => SliverAppbarPage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> images = ['assets/img/1.jpg','assets/img/2.jpg','assets/img/3.jpg','assets/img/2.jpg', 'assets/img/4.jpg','assets/img/5.jpg','assets/img/b2.jpg','assets/img/6.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Scaffold App'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: null)
        ],
      ),
      body: Container(
        child: Swiper(
          autoplay: true,
          itemBuilder: (BuildContext context,int index){
            return new Image.asset(images[index],fit: BoxFit.cover,);
          },
          itemCount: 4,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ),
      )
    );
  }
}
