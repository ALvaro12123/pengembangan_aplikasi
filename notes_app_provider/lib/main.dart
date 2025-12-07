import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/note_provider.dart';
import 'pages/home_page.dart';
import 'pages/add_note_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>NoteProvider(),
      child: MaterialApp(
        routes:{
          '/':(_)=>HomePage(),
          '/add':(_)=>AddNotePage(),
        },
      ),
    );
  }
}
