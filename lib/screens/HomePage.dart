import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_tode_app/widgets/custom_listview.dart';
import 'package:simple_tode_app/widgets/custom_textfield.dart';
import 'package:simple_tode_app/provider/note_provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    NoteProvider provider = context.watch<NoteProvider>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomTextfield(controller: controller),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (controller.text.trim().isNotEmpty) {
                        provider.addTask(controller.text.trim());
                      }
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Consumer<NoteProvider>(
                builder: (context, object, child) {
                  return customlistView(provider: object);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
