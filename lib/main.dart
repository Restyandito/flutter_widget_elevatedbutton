import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elevated Button Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ElevatedbuttonPage(),
    );
  }
}

class ElevatedbuttonPage extends StatefulWidget {
  const ElevatedbuttonPage({super.key});

  @override
  State<ElevatedbuttonPage> createState() => _ElevatedbuttonPageState();
}

class _ElevatedbuttonPageState extends State<ElevatedbuttonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ElevatedButton',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => print('Button Clicked'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white),
                  child: const Text('Click Me'),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ElevatedButton.icon(
                  onPressed: () => print('Button Clicked'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white),
                  icon: const Icon(Icons.play_arrow_rounded),
                  label: const Text('Click Me'),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 48.0,
                  child: ElevatedButton.icon(
                    onPressed: () => print('Button Clicked'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    icon: const Icon(Icons.play_arrow_rounded),
                    label: const Text('Click Me'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
