
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_tode_app/provider/note_provider.dart';


import 'screens/home_screen.dart';
void main(){
  runApp(ToDoList());
}
class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NoteProvider>(
      create: (context)=>NoteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
