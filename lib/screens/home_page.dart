import 'package:TDTasks/screens/list_tasks_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hasOpacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('TDTasks'),
      ),
      body: AnimatedOpacity(
        opacity: hasOpacity ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: Container(
          color: Colors.blue[100],
          child: const ListTasksPage(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            hasOpacity = !hasOpacity;
          });
        },
        child: Icon(
          hasOpacity ? Icons.no_encryption_sharp : Icons.remove_red_eye,
        ),
      ),
    );
  }
}
