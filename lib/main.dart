import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: AlbertoProfile(),
));

class AlbertoProfile extends StatefulWidget {
  @override
  _AlbertoProfileState createState() => _AlbertoProfileState();
}
///Then also we return a TREE WIDGET that every time
///that the data change the widget it's rebuild
class _AlbertoProfileState extends State<AlbertoProfile> {

  ///Here we define the data that change over time
  int albertoLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Alberto ID Card'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            setState(() {
              albertoLevel = albertoLevel + 1;
            });
          },
          child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/tesla.jpg'),
                      radius: 40,
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    height: 25,
                    color: Colors.red,
                  ),
                  Text(
                    'NAME',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(height: 10.0), //Space between two widgets
                  Text(
                    'Alberto Contreras',
                    style: TextStyle(
                      color: Colors.red,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),
                  ),
                  SizedBox(height: 20.0), //Space between two widgets
                  Text(
                    'Level',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(height: 10.0), //Space between two widgets
                  Text(
                    '$albertoLevel',
                    style: TextStyle(
                      color: Colors.red,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FlatButton(onPressed: (){},
                          child: Icon(Icons.mail)),
                      SizedBox(width: 10.0),
                      Text(
                        'mymail@mymail.com',
                        style: TextStyle(
                          color: Colors.red,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),
                      )

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      FlatButton(onPressed: (){},
                          child: Icon(Icons.group_add),
                      ),
                      Text('Add to Friends'),


                    ],

                  ),
                ],
              ),
      ),
    );
  }
}


