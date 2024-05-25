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
      home: const MyHomePage(title: "Exemple TextField"),
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
  final lgController = TextEditingController();
  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  final telController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _printValues() {
    print('Login: ${lgController.text}');
    print('Nom: ${nomController.text}');
    print('Prénom: ${prenomController.text}');
    print('Téléphone: ${telController.text}');
    print('Email: ${emailController.text}');
    print('Mot de passe: ${passwordController.text}');
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
            const Text(
              "Authentification",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 15),
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
            const SizedBox(height: 15),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre nom",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.person),
                ),
                controller: nomController,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre prénom",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.person_outline),
                ),
                controller: prenomController,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre téléphone",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.phone),
                ),
                controller: telController,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre email",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.email),
                ),
                controller: emailController,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre mot de passe",
                  labelStyle: TextStyle(fontSize: 15),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                controller: passwordController,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: _printValues,
              child: const Text("OK"),
            ),
          ],
        ),
      ),
    );
  }
}