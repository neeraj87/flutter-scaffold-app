import 'package:flutter/material.dart';
import '../widgets/navigation_widget.dart';

class SliverAppbarPage extends StatelessWidget {
  final List<String> images = ['assets/img/1.jpg','assets/img/b1.jpg','assets/img/3.jpg','assets/img/2.jpg', 'assets/img/4.jpg','assets/img/5.jpg','assets/img/b2.jpg','assets/img/6.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
              background: Image.asset('assets/img/4.jpg', fit: BoxFit.cover),
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add), onPressed: null)
            ],
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      child: Text('index is $index'),
                    );
                  },
                childCount: 10
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                  crossAxisCount: 2
              )
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Card(
                    child: Text('this is card with index: $index'),
                  );
                },
                childCount: 5
            ), 
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            )
          )
        ],
      )
    );
  }
}
