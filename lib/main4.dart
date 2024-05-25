import 'package:flutter/material.dart';

void main() {
  runApp(const RadioButtonApp());
}

class RadioButtonApp extends StatelessWidget {
  const RadioButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RadioButtonHomePage(title: "Etat civil"),
    );
  }
}

class RadioButtonHomePage extends StatefulWidget {
  const RadioButtonHomePage({super.key, required this.title});
  final String title;

  @override
  State<RadioButtonHomePage> createState() => _RadioButtonHomePageState();
}

class _RadioButtonHomePageState extends State<RadioButtonHomePage> {
  List<String> etat = ["Madame", "Mademoiselle", "Monsieur"];
  String valeur = "Monsieur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              const Text("Madame"),
              Radio(
                value: etat[0],
                groupValue: valeur,
                onChanged: (Object? value) {
                  setState(() {
                    valeur = etat[0];
                  });
                  debugPrint("$valeur");
                },
              ),
            ]),
            Row(children: [
              const Text("Mademoiselle"),
              Radio(
                value: etat[1],
                groupValue: valeur,
                onChanged: (Object? value) {
                  setState(() {
                    valeur = etat[1];
                  });
                  debugPrint("$valeur");
                },
              ),
            ]),
            Row(children: [
              const Text("Monsieur"),
              Radio(
                value: etat[2],
                groupValue: valeur,
                onChanged: (Object? value) {
                  setState(() {
                    valeur = etat[2];
                  });
                  debugPrint("$valeur");
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}