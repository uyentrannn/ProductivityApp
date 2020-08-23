import 'package:ProductivityApp/models/classes/Task.dart';
import 'package:ProductivityApp/models/global.dart';
import 'package:ProductivityApp/models/widgets/intray_todo_widget.dart';
import 'package:flutter/material.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList = [];
  @override
  Widget build(BuildContext context) {
    taskList = getList();
    return Container(
      color: mistyblue,
      child: _buildReorderableListSimple(context),
    );
  }

  Widget _buildListTitle(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskID),
      title: IntrayToDo(
        title: item.title,
      ),
    );
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: ReorderableListView(
          padding: EdgeInsets.only(top: 300),
          children: taskList
              .map((Task item) => _buildListTitle(context, item))
              .toList(),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              Task item = taskList[oldIndex];
              taskList.remove(item);
              taskList.insert(newIndex, item);
          });
      }),
    );
  }

  // void _onReorder(int oldIndex, int newIndex) {
  //   setState(() {
  //     if (newIndex > oldIndex) {
  //       newIndex -= 1;
  //     }
  //     final Task item = taskList.removeAt(oldIndex);
  //     taskList.insert(newIndex, item);
  //   });
  // }

  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      int id = i + 1;
      taskList
          .add(Task("My first to do " + id.toString(), false, i.toString()));
    }
    return taskList;
  }
}
