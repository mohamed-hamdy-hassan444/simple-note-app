import 'package:flutter/material.dart';
import 'package:simple_tode_app/provider/note_provider.dart';

class customlistView extends StatelessWidget {
  final NoteProvider provider;
  const customlistView({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: provider.tasks.length,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Card(
          color: Colors.grey,
          child: ListTile(
            title: Text(provider.tasks[i]),
            trailing: IconButton(
              onPressed: () {
                provider.removeTask(i);
              },
              icon: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}
