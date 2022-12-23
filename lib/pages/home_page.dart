import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint("Build context isledi");
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Flutter app"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hal-hazirda olan reqem",
              style: TextStyle(fontSize: 26.0),
            ),
            Text(_count.toString(),
                style: Theme.of(context).textTheme.headline1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterMethod();
        },
        child: const Icon(
          Icons.add,
          size: 28.0,
        ),
      ),
    );
  }

  void counterMethod() {
    setState(() {
      _count++;
    });
    debugPrint(_count.toString());
  }
}
