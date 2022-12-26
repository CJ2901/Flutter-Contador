import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
      ),
      // backgroundColor: Color.fromARGB(255, 36, 100, 179),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de clicks:',
              style: fontSize30,
            ),
            Text(
              '${counter}',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.adjust  ),
        onPressed: () {
        print('Hola Mundo');
        
      }),
    );
  }
}
