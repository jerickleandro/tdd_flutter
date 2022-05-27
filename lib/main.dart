import 'package:flutter/material.dart';
/**
 * Etapas:
 * trocar de stateless para stateful - OK
 * inserir o texteditingcontroller
 * inserir o textfield - OK
 * implementar a função do número primo - OK
 */

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final TextEditingController textCtrl = TextEditingController();

  var resultado = "";
  void ehPrimo(value) {
    setState(() {
      var divisores = 0;
      for (var i = 1; i <= value; i++) {
        if (value % i == 0) {
          divisores++;
        }
      }
      if (divisores == 2) {
        resultado = "É primo";
      } else {
        resultado = "Não é primo";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Bem Vindo!'),
          TextField(
            controller: textCtrl,
          ),
          Row(
            children: [
              const Icon(
                Icons.ac_unit,
                key: Key('icon_tdd'),
              ),
              ElevatedButton(
                  onPressed: () {
                    ehPrimo(int.parse(textCtrl.text));
                  },
                  child: const Text('Click'),
                  style: ElevatedButton.styleFrom(primary: Colors.black)),
            ],
          ),
          Text(resultado)
        ],
      ),
    );
  }
}
