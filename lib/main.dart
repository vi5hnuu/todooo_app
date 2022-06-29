import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooo/modals/task_data.dart';
import 'package:todooo/screens/task_screen.dart';


void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context)=>TaskData(),
      child: MaterialApp(
        theme: Theme.of(context).copyWith(
            bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent)//background colour of bottom sheet to trnsparent
        ),
        home: TasksScreen(),
      ),
    );
  }
}
