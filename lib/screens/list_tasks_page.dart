import 'package:TDTasks/shared/widgets/tasks_widget.dart';
import 'package:flutter/material.dart';

class ListTasksPage extends StatelessWidget {
  const ListTasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TasksWidget(
          name: 'Aprender Flutter',
          difficulty: 3,
          image: '',
        ),
        TasksWidget(
          name: 'Aprender GraphQL',
          difficulty: 5,
          image: '',
        ),
        TasksWidget(
          name: 'Aprender Dart',
          difficulty: 1,
          image: '',
        ),
        TasksWidget(
          name: 'Aprender a usar cache na Web',
          difficulty: 4,
          image: '',
        ),
        TasksWidget(
          name: 'Aprender gerência de estados com Flutter',
          difficulty: 2,
          image: '',
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
