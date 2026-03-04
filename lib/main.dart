import 'package:flutter/material.dart';

void main() => runApp(const BrightVisionApp());

class BrightVisionApp extends StatelessWidget {
  const BrightVisionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bright-Vision',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.light,
        ),
      ),
      home: const BrightVisionHome(),
    );
  }
}

class BrightVisionHome extends StatelessWidget {
  const BrightVisionHome({super.key});

  void _showPersonalMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("☀️ Bright-Vision Message"),
          content: const Text(
            "I built Bright-Vision just for you, Sis. "
            "I wanted you to have your own app on your phone. "
            "Love you!"
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BRIGHT-VISION"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wb_sunny, size: 100, color: Colors.amber[800]),
            const SizedBox(height: 20),
            const Text(
              "Project Bright-Vision",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => _showPersonalMessage(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: const Text("OPEN MESSAGE"),
            ),
          ],
        ),
      ),
    );
  }
}
