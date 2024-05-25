import 'package:flutter/material.dart';

void main() {
  runApp(const MathApp());
}

class MathApp extends StatelessWidget {
  const MathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculatrice",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MathHomePage(title: "Calculatrice Simple"),
    );
  }
}

class MathHomePage extends StatefulWidget {
  const MathHomePage({super.key, required this.title});
  final String title;

  @override
  State<MathHomePage> createState() => _MathHomePageState();
}

class _MathHomePageState extends State<MathHomePage> {
  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();
  double? result;

  void performOperation(String operation) {
    final firstNumber = double.tryParse(firstNumberController.text);
    final secondNumber = double.tryParse(secondNumberController.text);

    if (firstNumber != null && secondNumber != null) {
      setState(() {
        switch (operation) {
          case '+':
            result = firstNumber + secondNumber;
            break;
          case '-':
            result = firstNumber - secondNumber;
            break;
          case '*':
            result = firstNumber * secondNumber;
            break;
          case '/':
            result = secondNumber != 0 ? firstNumber / secondNumber : null;
            break;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Premier nombre",
                ),
                keyboardType: TextInputType.number,
                controller: firstNumberController,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Deuxième nombre",
                ),
                keyboardType: TextInputType.number,
                controller: secondNumberController,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => performOperation('+'),
                  child: const Text("+"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation('-'),
                  child: const Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation('*'),
                  child: const Text("*"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation('/'),
                  child: const Text("/"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              result == null ? "" : "Résultat: $result",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}