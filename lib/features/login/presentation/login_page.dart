import 'package:beamer/beamer.dart';
import 'package:btz/core/entity/login_entity.dart';
import 'package:btz/core/utils/animation_alert.dart';
import 'package:btz/core/utils/input_text.dart';
import 'package:btz/features/login/presentation/bloc/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  bool mostrarSenha = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BlocProvider(
        create: (context) => createLoginCubit(),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            var cubit = context.read<LoginCubit>();
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage("assets/logo.png"),
                    ),
                    InputText(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                      validator: Validatorless.multiple(
                        [
                          Validatorless.required('Por favor, digite seu email'),
                          Validatorless.email(
                              'Por favor, digite um e-mail correto')
                        ],
                      ),
                    ),
                    InputText(
                      controller: _pass,
                      labelText: 'Senha',
                      obscureText: !mostrarSenha,
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
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await showDialog(
                              context: context,
                              builder: (ctx) => const AnimationAlert(
                                    color: Colors.green,
                                    icon: Icons.sync,
                                    title: 'Autencicando',
                                    milliseconds: 1800,
                                  ));
                          if (context.mounted) {
                            cubit.sendLoginUsecase(LoginEntity(
                                email: _email.text,
                                name: 'darci',
                                lastLogin: DateTime.now(),
                                userId: 1,
                                token: 'FESU-FIHASEF78YA-S78SEHT780-HG8AH'));
                            Beamer.of(context).beamToNamed('/home');
                          }
                        } else {
                          await showDialog(
                            context: context,
                            builder: (ctx) => const AnimationAlert(
                              color: Colors.red,
                              icon: Icons.warning,
                              title: 'Email ou senha invalidos!',
                              milliseconds: 1800,
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Entrar',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
