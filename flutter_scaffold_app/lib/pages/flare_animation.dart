import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class FlareAnimationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flare 2D Animation Widget"),
        ),
        body: Container(
          child: Center(
            child: FlareActor(
              "assets/circular.flr",
              animation: "circular",
              fit: BoxFit.contain,
            ),
          ),
        ));
  }
}
