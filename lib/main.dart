import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();

  var res = "";

  void ehPrimo(v) {
    setState(() {
      var div = 0;
      for (var i = 1; i <= v; i++) {
        if (v % i == 0) {
          div++;
        }
      }
      if (div == 2) {
        res = "É primo";
      } else {
        res = "Não é primo";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hello World'),
          TextField(
            controller: controller,
          ),
          Row(
            children: [
              const Icon(
                Icons.ac_unit,
                key: Key('icon_tdd'),
              ),
              ElevatedButton(
                  onPressed: () {
                    ehPrimo(int.parse(controller.text));
                  },
                  child: const Text('Click'),
                  style: ElevatedButton.styleFrom(primary: Colors.black)),
            ],
          ),
          Text(res)
        ],
      ),
    );
  }
}
