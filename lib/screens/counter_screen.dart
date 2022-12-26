import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase() => setState(() => counter++);
  void reset() => setState(() => counter = 0);
  void decrease() => setState(() => counter--);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterScreen'),
          elevation: 0,
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Número de clicks:',
                style: fontSize30,
              ),
              Text(
                '$counter',
                style: fontSize30,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActions(
          increaseFn: increase,
          resetFn: reset,
          decreaseFn: decrease,
        ));
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function resetFn;
  final Function decreaseFn;


  const CustomFloatingActions({
    Key? key,
    required this.increaseFn, 
    required this.resetFn, 
    required this.decreaseFn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
    children: [
      FloatingActionButton(
      child: const Icon(Icons.exposure_plus_1),
      onPressed: () => increaseFn(),
      // onPressed: () => setState(() => counter++),
      ),

      FloatingActionButton(
      child: const Icon(Icons.settings_backup_restore),
      onPressed: () => resetFn(),
      // onPressed: () => setState(() => counter = 0),
      ),

      FloatingActionButton(
      child: const Icon(Icons.exposure_minus_1),
      onPressed: () => decreaseFn(),
      // onPressed: () => setState(() => counter--),
      ),
        ]);
  }
}
