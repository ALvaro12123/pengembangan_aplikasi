import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';
import '../widgets/note_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final p = Provider.of<NoteProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('My Notes')),
      body: ListView.builder(
        itemCount: p.notes.length,
        itemBuilder: (_, i){
          final note = p.notes[i];
          return NoteCard(
            note: note,
            onDelete: ()=>p.deleteNote(note.id!),
          );
        }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.pushNamed(context, '/add'),
        child: Icon(Icons.add),
      ),
    );
  }
}
