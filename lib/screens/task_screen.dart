import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooo/modals/task_data.dart';
import 'package:todooo/widgets/add_task_screen.dart';
import '../widgets/task_list.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
              context: context,
              builder: (context){
                  return SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  );
              });
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Tooltip(
                  message: 'Long Press On Item To delete',waitDuration: Duration(milliseconds: 50),
                  child: CircleAvatar(
                      child: Icon(Icons.info_outline,size: 40.0,color: Colors.lightBlueAccent,),
                    backgroundColor: Colors.white,
                    radius: 30.0,

                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                    "ToDooo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 50.0
                  ),
                ),
                Text(
                  "${Provider.of<TaskData>(context).taskCount} Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                  ),
                ),
              ],
            ),
          ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                ),
                child: TaskList(),
              ),
            )
          ],

        ),
    );
  }
}




