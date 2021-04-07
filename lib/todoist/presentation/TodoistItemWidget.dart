import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:todo_list/todoist/controller/TodoistController.dart';
import 'package:todo_list/todoist/entity/TodoistItem.dart';

class TodoistItemWidget extends StatefulWidget {
  final TodoistItem item;
  final int index;
  final TodoistController _todoListController = Get.find();
  TodoistItemWidget(this.item, this.index);

  @override
  _TodoItemWidgetState createState() => _TodoItemWidgetState();
}

class _TodoItemWidgetState extends State<TodoistItemWidget> {
  _promptRemoveTodoItem() {
    Get.defaultDialog(
        title: "",
        content: Text('${this.widget.item.title} 완료 처리 하시겠습니까?'),
        textCancel: 'cancel',
        onCancel: () => Get.back(),
        textConfirm: 'complete',
        onConfirm: () {
          this.widget._todoListController.shouldRemoveItemWithIndex.value = widget.index;
          Get.back();
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(widget.item.title), onTap: () => _promptRemoveTodoItem());
  }
}