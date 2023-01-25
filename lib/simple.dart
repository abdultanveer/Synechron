import 'package:flutter/material.dart';

    void main(){
      runApp(MaterialApp(
             home: Home(),
      ));
    }


    class Home extends StatefulWidget {
      const Home({Key? key}) : super(key: key);

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {
      int _counter = 0;

      void _incrementCounter(){
        setState(() {
          _counter++;
        });
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home title',),
            centerTitle:true,
            backgroundColor: Colors.green,
          ),
          body: Center(
              child: Text('The button was pushed -- times'+ '$_counter',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.red
              ),)
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: _incrementCounter,
            child: Text('click me'),
          ),
        );
      }
    }


increment() {
}
