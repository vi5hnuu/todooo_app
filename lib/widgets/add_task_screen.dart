
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:todooo/modals/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
        ),
        padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 40.0),
        child: Column(
          children: [
            Text(
                'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged:(value){
                newTaskTitle=value;
              },
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Enter the task',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2.0,)
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            MaterialButton(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
              child: Text('Add'),
              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 80.0),
              splashColor: Colors.blue,
              onPressed: (){
                if(newTaskTitle!=null)
                Provider.of<TaskData>(context,listen: false).addNewTask(newTaskTitle!);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
