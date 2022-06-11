import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const Text(
            "Here is button widget test",
            style: TextStyle(fontSize: 18),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.purple, onPrimary: Colors.white),
            onPressed: () => print('clicked'),
            child: const Text("Elevated Button"),
          ),
          TextButton(
            style: TextButton.styleFrom(primary: Colors.purple),
            onPressed: () => print('clicked'),
            child: const Text("Text Button"),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                primary: Colors.purple,
                side: const BorderSide(color: Colors.purple)),
            onPressed: () => print('clickd'),
            child: const Text("Outlined Button"),
          )
        ],
      ),
    );
  }
}
