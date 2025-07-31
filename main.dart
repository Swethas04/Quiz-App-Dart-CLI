import 'dart:io';

void main() {
  int score = 0;

  List<Map<String, dynamic>> questions = [
    {
      'question': 'What keyword defines a runtime constant?',
      'options': ['var', 'final', 'const', 'static'],
      'answer': 2 
    },
    {
      'question': 'Which type holds decimal numbers?',
      'options': ['int', 'double', 'String', 'bool'],
      'answer': 2 
    },
    {
      'question': 'What does "==" do?',
      'options': ['Assigns', 'Adds', 'Compares', 'Divides'],
      'answer': 3
    },
    {
      'question': 'Which loop runs at least once?',
      'options': ['for', 'while', 'do-while', 'if'],
      'answer': 3
    },
    {
      'question': 'Which data type stores true/false?',
      'options': ['List', 'String', 'bool', 'Set'],
      'answer': 3
    },
  ];

  for (var q in questions) {
    print('\n${q['question']}');
    for (int i = 0; i < q['options'].length; i++) {
      print('${i + 1}. ${q['options'][i]}');
    }

    stdout.write('Enter your answer (1-4): ');
    var input = int.tryParse(stdin.readLineSync() ?? '');

    if (input == q['answer']) {
      print("Correct!");
      score++;
    } else {
      print("Wrong!");
    }
  }

  print('\n Whoa!You scored $score out of ${questions.length}!');
}
