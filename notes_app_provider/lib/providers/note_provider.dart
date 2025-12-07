import 'package:flutter/material.dart';
import '../models/note_model.dart';

class NoteProvider with ChangeNotifier {
  final List<Note> _notes = [];
  List<Note> get notes => _notes;

  void addNote(Note n) {
    _notes.add(n);
    notifyListeners();
  }

  void deleteNote(int id) {
    _notes.removeWhere((e)=>e.id==id);
    notifyListeners();
  }
}
