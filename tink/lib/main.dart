import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
     
      _counter--;
    });
  }
  
  @override
  Widget build(BuildContext context) {
  
    var scaffold = Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
             FlatButton(
              color: Colors.red,
              onPressed:_decrementCounter,
              child: Text('Sub'),
            ),
          ],
        ),
      ),
      floatingActionButton:SpeedDial(
        backgroundColor: Colors.black,
        closeManually: true,
        animatedIcon: AnimatedIcons.menu_close,
      children: [
        SpeedDialChild(
          child:Icon(Icons.add_circle_outline),
          label: "Increment Counter",
          onTap: _incrementCounter,
        ),
        SpeedDialChild(
          child:Icon(Icons.remove),
          label: "Decrement Counter",
          onTap: _decrementCounter,
        )
      ],)
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Text("Add"),
      // ), 
    );
    return scaffold;
  }
}
