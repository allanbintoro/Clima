import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Data = await task2();
  task3(task2Data);
}

void task1() {
  String result = 'Task 1 Data';
  print('Task 1 Complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, () {
    result = 'Task 2 Data';
    print('Task 2 Complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'Task 3 Data';
  print('Task 3 Complete with $task2Data');
}
