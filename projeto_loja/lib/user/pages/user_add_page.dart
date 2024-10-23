import 'package:flutter/material.dart';
import 'package:projeto_loja/customs/custom_textformfield.dart';

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
            CustomTextFormField(
              text: const Text('Nome do Usuário'),
            ),
            CustomTextFormField(
              text: const Text('Email'),
            ),
            CustomTextFormField(
              text: const Text('Telefone'),
            ),
            CustomTextFormField(
              text: const Text('Senha'),
              isPassword: true,
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
