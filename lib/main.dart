import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "M208_TP5"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var lgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              "Authentification",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre login",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.person_2_outlined),
                ),
                controller: lgController,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Saisir votre mot de passe",
                  labelStyle: TextStyle(fontSize: 15),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () => {}, child: const Text("OK"))
          ],
        ),
      ),
    );
  }
}
