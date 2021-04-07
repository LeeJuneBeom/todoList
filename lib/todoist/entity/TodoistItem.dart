class TodoistItem {
  String _title;
  List<TodoistItem> list;


  String get title => _title;

  set title(String value) {
    _title = value;
  }

  TodoistItem();
  TodoistItem.title(String title);
}