import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooo/modals/task_data.dart';

import '../modals/task.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallBack;
  final VoidCallback longPressCallBack;
  TaskTile({required this.title,required this.checkBoxCallBack,this.isChecked=false,required this.longPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.title,
        style: TextStyle(
            decoration: isChecked ?TextDecoration.lineThrough:null
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue){
          checkBoxCallBack(newValue);
        },
      ),
      onLongPress: longPressCallBack,
    );
  }
}



/*
* void checkBoxCallBack(bool checkBoxState){
    setState((){
      isChecked=checkBoxState;
    });
* */