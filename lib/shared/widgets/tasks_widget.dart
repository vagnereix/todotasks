// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:TDTasks/shared/widgets/difficulty_widget.dart';
import 'package:flutter/material.dart';

class TasksWidget extends StatefulWidget {
  final String name;
  final String image;
  final int difficulty;

  const TasksWidget({
    Key? key,
    required this.name,
    required this.image,
    required this.difficulty,
  }) : super(key: key);

  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Stack(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.blue[400],
              borderRadius: const BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          fit: BoxFit.cover,
                          'https://picsum.photos/id/1/100/100',
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          widget.name,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        subtitle: DifficultyWidget(
                          difficulty: widget.difficulty,
                        ),
                        trailing: SizedBox(
                          width: 40,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                level++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                            ),
                            child: const Icon(Icons.arrow_drop_up),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: (widget.difficulty > 0)
                              ? (level / widget.difficulty) / 10
                              : 1,
                          backgroundColor: Colors.grey[200],
                          color: Colors.blue[700],
                        ),
                      ),
                    ),
                    Text(
                      'Nível $level',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
