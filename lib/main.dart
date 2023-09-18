import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


Future<http.Response> turnon() {
  return http.get(Uri.parse('https://thingspeak.com/update?api_key=ABXOL5SZX1PW5B86&field1=1'));
}
Future<http.Response> turnoff() {
  return http.get(Uri.parse('https://thingspeak.com/update?api_key=ABXOL5SZX1PW5B86&field1=0'));
}



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Wireless Switch'),
          
        ),
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
              
                onPressed: turnon,
                child:  const Text('ON'),
              ),
              const SizedBox(height: 20), // Add spacing between the buttons
              ElevatedButton(
                onPressed: turnoff,
                child: const Text('OFF'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
