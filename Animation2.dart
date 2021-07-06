import 'package:flutter/material.dart';

class Anim2 extends StatefulWidget {
  @override
  _Anim2State createState() => _Anim2State();
}

class _Anim2State extends State<Anim2> {

  Tween<double> _scaltween = Tween<double>(begin: 2, end: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation 2"),
      ),

      body: Center(
        child: TweenAnimationBuilder(
          curve: Curves.bounceOut,
          tween: _scaltween,
          duration: Duration(milliseconds: 1000),
          builder: (context , scale , child){
            return Transform.scale(scale: scale, child: child,);
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Center(
              child: Text("Animation"),
            ),
          ),

        ),

      ),

    );

  }
}
