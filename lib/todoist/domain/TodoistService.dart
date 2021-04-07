import 'package:todo_list/todoist/entity/TodoistItem.dart';

abstract class TodoistService {
  void addTodoistItem(TodoistItem item);

  void deleteTodoistItem(int index);
}