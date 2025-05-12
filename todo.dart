import 'dart:io';

class Todo {
  String task;
  bool isDone;

  Todo(this.task, {this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }

  @override
  String toString() {
    return '[${isDone ? 'x' : ' '}] $task';
  }
}

void main() {
  List<Todo> todos = [];

  while (true) {
    print('\n📝 TODO APP');
    print('1. Add Task');
    print('2. View Tasks');
    print('3. Mark Task as Done');
    print('4. Exit');
    stdout.write('Choose an option: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        stdout.write('Enter task: ');
        String? task = stdin.readLineSync();
        if (task != null && task.trim().isNotEmpty) {
          todos.add(Todo(task.trim()));
          print('✅ Task added!');
        }
        break;

      case '2':
        print('\n📋 Your Tasks:');
        if (todos.isEmpty) {
          print('No tasks yet.');
        } else {
          for (int i = 0; i < todos.length; i++) {
            print('${i + 1}. ${todos[i]}');
          }
        }
        break;

      case '3':
        stdout.write('Enter task number to toggle complete: ');
        String? numStr = stdin.readLineSync();
        int? index = int.tryParse(numStr ?? '') ?? -1;
        if (index > 0 && index <= todos.length) {
          todos[index - 1].toggleDone();
          print('✅ Task updated!');
        } else {
          print('⚠️ Invalid task number.');
        }
        break;

      case '4':
        print('👋 Exiting...');
        exit(0);

      default:
        print('❌ Invalid option. Try again.');
    }
  }
}
