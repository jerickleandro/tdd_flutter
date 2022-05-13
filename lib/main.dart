import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello World'),
          Row(
            children: [
              Icon(
                Icons.ac_unit,
                key: Key('icon_tdd'),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Click'),
                  style: ElevatedButton.styleFrom(primary: Colors.black))
            ],
          )
        ],
      ),
    );
  }
}
