import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:todo_list/todoist/controller/TodoistController.dart';
import 'package:todo_list/todoist/entity/TodoistItem.dart';
import 'package:todo_list/todoist/presentation/AddItemPageWidget.dart';
import 'package:todo_list/todoist/presentation/TodoistItemWidget.dart';

class TodoistListPage extends StatefulWidget {
  @override
  _TodoistListPageState createState() => _TodoistListPageState();
}

class _TodoistListPageState extends State<TodoistListPage> {
  final TodoistController _todoListController = Get.put(TodoistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todo List By Junbeom'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(() => AddItemPageWidget()),
          tooltip: '추가',
          child: Icon(Icons.add),
        ),
        body: Obx(() {
          return ListView.builder(
              itemCount: _todoListController.todoItems.length,
              itemBuilder: (_, index) {
                TodoistItem item = _todoListController.todoItems.elementAt(index);
                return TodoistItemWidget(item, index);
              }
          );
        })
    );
  }
}