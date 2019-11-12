import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  /// create array

  Map <String, bool> values = {
    'I am a girl': false,
    'I am a boy': false,
    'I like banana': false,
    'I am a 19 year old': false,
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( 
          actions: <Widget>[
            Container( 
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.send),
            )
          ],
          title: Text("CheckBox"),
          centerTitle: true,
        ),
        body: ListView( 
          ///key  you can write it . it is 
          children: values.keys.map((String key){
            return Card( 
              child: CheckboxListTile(
                title: Text(key),
                value: values[key],
                 onChanged: (bool value){
                   setState(() {
                    values[key] = value; 
                   });
                 },
                activeColor: Colors.pink,
                checkColor: Colors.green,
                secondary: Icon(Icons.edit),
              ),
            );
          }).toList()
        ),
        floatingActionButton: FloatingActionButton( 
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}