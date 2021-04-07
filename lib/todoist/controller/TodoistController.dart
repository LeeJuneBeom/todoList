import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:todo_list/todoist/domain/TodoistServiceImp.dart';
import 'package:todo_list/todoist/entity/TodoistItem.dart';

class TodoistController extends GetxController {

  TodoistItem model = new TodoistItem();
  TodoistServiceImp todoistService = new TodoistServiceImp();

  // input
  final RxString shouldAddTodoItem = ''.obs;
  final RxInt shouldRemoveItemWithIndex = 0.obs;

  // output
  final RxList<TodoistItem> todoItems = RxList<TodoistItem>();

  TodoistController({TodoistItem model}) : this.model = model ?? TodoistItem()  {

    ever(shouldAddTodoItem, (title) {
      // this.model.addItem(TodoItem(title));
      model.title = title;
      // debugPrint('title : $title');
      debugPrint('model : $model');
      todoistService.addTodoistItem(model);
      todoItems.clear();
      todoItems.addAll(model.list);
    });

    ever(shouldRemoveItemWithIndex, (index) {
      // this.model.removeItem(index);
      todoistService.deleteTodoistItem(index);
      todoItems.clear();
      todoItems.addAll(model.list);
    });

  }
}