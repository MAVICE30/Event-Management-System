import 'package:ems_api_2/Widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int red = 0;
  int green = 0;
  int blue = 0;

  @override
  Widget build(BuildContext context) {
    Color updateColor(int red, int green, int blue) {
      return Color.fromRGBO(red, green, blue, 1);
    }

    return Scaffold(
      drawer: CustomDrawer(),

      body: SafeArea(
        child: Container(
          color: updateColor(red, green, blue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Slider(
                min: 0,
                  max: 255,
                  activeColor: Colors.red,
                  inactiveColor: Colors.white,
                  value: red.toDouble(),
                  onChanged: (double newVal) {
                    setState(() {
                      red = newVal.toInt();
                    });
                  }),
              Slider(
                  min: 0,
                  max: 255,
                  activeColor: Colors.green,
                  inactiveColor: Colors.white,
                  value: green.toDouble(),
                  onChanged: (double newVal) {
                    setState(() {
                      green = newVal.toInt();
                    });
                  }),
              Slider(
                  min: 0,
                  max: 255,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.white,
                  value: blue.toDouble(),
                  onChanged: (double newVal) {
                    setState(() {
                      blue = newVal.toInt();
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class slider extends StatefulWidget {
  int sliderVal = 0;
  final Color color;

  slider({required this.sliderVal, required this.color});

  @override
  _sliderState createState() =>
      _sliderState(sliderVal: sliderVal, color: color);
}

class _sliderState extends State<slider> {
  _sliderState({required int sliderVal, required Color color});

  @override
  Widget build(BuildContext context) {
    //int sliderVal=0;

    Test test = Test();

    return Slider(
      value: widget.sliderVal.toDouble(),
      min: 0,
      max: 255,
      inactiveColor: Colors.white,
      activeColor: widget.color,
      onChanged: (double newVal) {
        setState(() {
          widget.sliderVal = newVal.toInt();
        });
      },
    );
  }
}
