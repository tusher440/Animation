import "package:flutter/material.dart";
import 'package:flutter_animation/Animation2.dart';

class Anim1 extends StatefulWidget {

  @override
  _Anim1State createState() => _Anim1State();
}

class _Anim1State extends State<Anim1> {

  double _height = 200;
  double _width = 200;

  double animate(){
    setState(() {
      _height = 100;
      _width = 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation 1"),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Animation"),
              onPressed: (){
                animate();
              },
            ),

            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              curve: Curves.bounceOut,
              height: _height,
              width: _width,
              color: Colors.green,
              child: Center(
                child: Text("Animation"),
              ),
            ),

      RaisedButton(
          textColor: Colors.black,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Anim2(),
            )
            );
          }
         ),

              Text("Wellcome to my 2nd page",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

          ],
        ),
      ),

    );
  }
}
