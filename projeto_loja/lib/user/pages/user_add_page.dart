import 'package:flutter/material.dart';

class UserAddPage extends StatelessWidget {
  const UserAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Text(
        'Cadastro de Usuario',
        style: TextStyle(
            color: Colors.orange, fontSize: 30, fontWeight: FontWeight.w700),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Nome do Usuário'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Email'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ],
        ),
      ),
    ]));
  }
}
