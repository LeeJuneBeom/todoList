import 'package:get/instance_manager.dart';
import 'package:todo_list/todoist/domain/TodoistService.dart';
import 'package:todo_list/todoist/domain/TodoistServiceImp.dart';
import 'package:todo_list/todoist/entity/TodoistItem.dart';

class ApplicationHelper {

  ApplicationHelper() {
    // addInjectionRepository();
    addInjectionItem();
    addInjectionService();
  }

  // void addInjectionRepository() {
  //   Get.lazyPut<TodoListRepository>(() {
  //     return TodoListRepositoryImp();
  //   });
  // }

  void addInjectionItem() {
    Get.lazyPut<TodoistItem>(() {
      return TodoistItem();
    });
  }

  void addInjectionService() {
    Get.lazyPut<TodoistServiceImp>(() {
      return TodoistServiceImp();
    });
  }
}