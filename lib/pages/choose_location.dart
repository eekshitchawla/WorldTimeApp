import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
         child:  Text('$counter')
      ),
    );
  }
}
