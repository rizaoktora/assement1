// my_app.dart
import 'package:flutter/material.dart';
import 'package:projek/ui/form.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Branding Form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: MyForm(),
          ),
        ),
      ),
    );
  }
}
