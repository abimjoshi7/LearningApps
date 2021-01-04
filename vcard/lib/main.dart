import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vcard'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70.0, backgroundImage: AssetImage('images/j2.jpeg'),
            ),
            SizedBox(height: 30),
            Text( 'James Hetfield', style: TextStyle(fontFamily: 'DancingScrpit', fontWeight: FontWeight.bold, fontSize: 30.0),),
            SizedBox(height: 10),
            Text('Lead Vocalist', style: TextStyle(fontFamily: 'Niconne', fontSize: 28),),
            Divider(height: 20, color: Colors.black, indent: 104, endIndent: 104,),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone), title: Text('+9779851035326', style: TextStyle(fontFamily: 'Frijole'),),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              child: ListTile(
                leading: Icon(Icons.email), title: Text('abimatwork@gmail.com', style: TextStyle(fontFamily: 'Frijole'),),
              ),
            ),


          ],
        ),
      
      ),

    );
  }
}


