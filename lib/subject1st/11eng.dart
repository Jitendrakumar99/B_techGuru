import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: English(),
  ));
}

class Note {
  final String title;
  final String content;

  Note({
    required this.title,
    required this.content,
  });
}

class NoteDetail extends StatelessWidget {
  final Note note;

  NoteDetail({required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(note.content),
      ),
    );
  }
}

class English extends StatelessWidget {
  final List<Note> notes = [
    Note(
      title: 'Chapter 1: Introduction',
      content: getChapter1Content(),
    ),
    Note(
      title: 'Chapter 2: Mechanics',
      content: getChapter2Content(),
    ),
    Note(
      title: 'Chapter 3: Thermodynamics',
      content: getChapter3Content(),
    ),
    Note(
      title: 'Chapter 4: Mechanics',
      content: getChapter2Content(),
    ),
    Note(
      title: 'Chapter 5: Thermodynamics',
      content: getChapter3Content(),
    ),
    // Add more notes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Notes'),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(notes[index].title),
              subtitle: Text(
                notes[index].content.length > 50
                    ? '${notes[index].content.substring(0, 50)}...'
                    : notes[index].content,
              ),
              onTap: () {
                // Navigate to the NoteDetail screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NoteDetail(note: notes[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// Separate functions for chapter contents
String getChapter1Content() {
  return 'This chapter introduces the basic concepts of physics...klsdjklcdlkchlncl';
}

String getChapter2Content() {
  return 'This chapter covers the principles of mechanics...';
}

String getChapter3Content() {
  return 'This chapter explains the laws of thermodynamics...';
}
