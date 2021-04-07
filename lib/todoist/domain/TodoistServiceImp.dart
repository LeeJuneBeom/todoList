import 'package:todo_list/todoist/domain/TodoistService.dart';
import 'package:todo_list/todoist/entity/TodoistItem.dart';

class TodoistServiceImp implements TodoistService{

  TodoistItem _todoistItem;

  @override
  void addTodoistItem(TodoistItem item) {
    // TODO: implement addTodoistItem
    item.list.add(item);
  }

  @override
  void deleteTodoistItem(int index) {
    // TODO: implement deleteTodoistItem
    if (index < 0) return;

    if (index < _todoistItem.list.length) {
      _todoistItem.list.removeAt(index);
    }
  }

}