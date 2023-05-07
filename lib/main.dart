import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';

// Import the language & theme
import 'package:highlight/languages/dart.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyClass(),
  ));
}

class MyClass extends StatefulWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  CodeController? _codeController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _codeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const source = "void main() {\n    print(\"Hello, world!\");\n}";
    // Instantiate the CodeController
    _codeController = CodeController(
      text: source,
      language: dart,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Code Editor'),
        backgroundColor: Colors.teal,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: CodeField(
            controller: _codeController!,
            textStyle: const TextStyle(fontFamily: 'SourceCode'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.play_arrow_sharp),
      ),
    );
  }
}
