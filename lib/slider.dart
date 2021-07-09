import 'package:flutter/material.dart';

class SliderApp extends StatefulWidget {
  @override
  _SliderAppState createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {
  double _fontValue = double.parse((18.3412).toStringAsFixed(2));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("FontSize Slider"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60, left: 35, right: 35),
              child: TextField(
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: _fontValue,color: Colors.red),
                maxLines: 3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('FontSize is:', style: TextStyle(fontSize: 18,color:Colors.white)),
                SizedBox(width: 8),
                Text(_fontValue.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Slider(
                value: _fontValue,
                onChanged: (newSize) {
                  setState(() => _fontValue = newSize);
                },
                min: 10,
                max: 50,
              ),
            )
          ],
        ));
  }
}
