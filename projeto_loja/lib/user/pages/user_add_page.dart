import 'package:flutter/material.dart';
import 'package:projeto_loja/customs/custom_textformfield.dart';
import 'package:projeto_loja/user/models/user_model.dart';
import 'package:projeto_loja/user/services/user_services.dart';

class UserAddPage extends StatelessWidget {
  UserAddPage({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  UserModel userModel = UserModel();

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
              controller: nameController,
              text: const Text('Nome do Usuário'),
            ),
            CustomTextFormField(
              controller: emailController,
              text: const Text('Email'),
            ),
            CustomTextFormField(
              controller: telefoneController,
              text: const Text('Telefone'),
            ),
            CustomTextFormField(
              controller: senhaController,
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
                  onPressed: () {
                    //DTO
                    userModel.name = nameController.text;
                    userModel.email = emailController.text;
                    userModel.phone = telefoneController.text;
                    userModel.password = senhaController.text;

                    //SERVICES
                    UserServices userServices = UserServices();
                    userServices.signUp(userModel);
                  },
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
