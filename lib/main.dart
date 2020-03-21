import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: AlbertoProfile(),
));

class AlbertoProfile extends StatelessWidget {
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
                    '20',
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



