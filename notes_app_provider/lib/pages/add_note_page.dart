import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/note_model.dart';
import '../providers/note_provider.dart';

class AddNotePage extends StatelessWidget {
  AddNotePage({super.key});
  final titleC = TextEditingController();
  final contentC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Note')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: titleC, decoration: InputDecoration(labelText:'Title')),
            SizedBox(height:16),
            TextField(controller: contentC, decoration: InputDecoration(labelText:'Content')),
            SizedBox(height:16),
            ElevatedButton(
              onPressed: (){
                final p = Provider.of<NoteProvider>(context, listen:false);
                p.addNote(Note(
                  id: DateTime.now().millisecondsSinceEpoch,
                  title: titleC.text,
                  content: contentC.text,
                  createdAt: DateTime.now()
                ));
                Navigator.pop(context);
              },
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}
