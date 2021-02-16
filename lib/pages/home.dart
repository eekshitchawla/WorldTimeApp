import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    String bgimage = data['isDaytime'] ? 'day.png':  'night.png';
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image:  AssetImage('assets/$bgimage'),)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 100, 0,0),
          child: SafeArea(
              child:Column(
                children: [
                  FlatButton.icon(
                      onPressed: (){
                        Navigator.pushNamed(context, '/location');
                      },
                      icon: Icon(Icons.edit_location),
                      label: Text('Edit Location')
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          data['location'],
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(data['time'],
                      style: TextStyle(
                        fontSize: 25,
                      )
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
