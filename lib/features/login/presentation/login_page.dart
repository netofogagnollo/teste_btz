import 'package:btz/core/utils/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  final _password = TextEditingController();
  final _email = TextEditingController();

  Widget body = Container();
  bool mostrarSenha = false;
  @override
  Widget build(BuildContext context) {
    body = Wrap(
      children: [
        Container(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 15,
            children: [
              InputText(
                controller: _email,
                labelText: 'Email',
                hintText: 'Digite seu email',
                keyboardType: TextInputType.emailAddress,
              ),
              InputText(
                controller: _password,
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                obscureText: mostrarSenha,
                maxLines: 1,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      mostrarSenha = !mostrarSenha;
                    });
                  },
                  icon: Icon(mostrarSenha
                      ? Icons.visibility_outlined
                      : Icons.visibility_off),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed('/home/');
                  },
                  child: Text('Logar'))
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      body: body,
    );
  }
}
