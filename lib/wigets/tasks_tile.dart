import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  final bool ischecked ;
  final String tasksTile;
  final Function checkBoxCallBack;
  final Function longPressCallBack;
  TasksTile({this.ischecked,this.tasksTile,this.checkBoxCallBack,this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        tasksTile,
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: ischecked,
            onChanged: checkBoxCallBack,
          ),
    );

  }
}


