import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:todo_list/todoist/controller/TodoistController.dart';

class AddItemPageWidget extends StatefulWidget {

  final TodoistController _todoListController;
  AddItemPageWidget({TodoistController todoListController}) : this._todoListController = todoListController ?? Get.find();

  @override
  _AddItemPageWidgetState createState() => _AddItemPageWidgetState();
}

class _AddItemPageWidgetState extends State<AddItemPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('할일 추가'),
      ),
      body: TextField(
          autofocus: true,
          onSubmitted: (value) {
            widget._todoListController.shouldAddTodoItem.value = value;
            Get.back();
          }),
    );
  }
}