import 'package:flutter/material.dart';

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CadastroUsuarioState createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool arePasswordsMatching(String password, String confirmPassword) {
    return password == confirmPassword;
  }

  String? validateEmail(String? value) {
    const pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final regExp = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return 'Por favor, insira seu e-mail';
    } else if (!regExp.hasMatch(value)) {
      return 'Por favor, insira um e-mail válido';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 230,
                    child: Image.asset('assets/logo.png'),
                  ),
                  const SizedBox(height: 20), // Espaço entre os campos
                  const Row(
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55.0),
                          child: Text(
                            'Cadastre-se',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xFF509C00),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espaço entre os campos
                  SizedBox(
                    width: 300, // Defina a largura desejada
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                      ),
                      validator: validateEmail,
                    ),
                  ),
                  const SizedBox(height: 20), // Espaço entre os campos
                  SizedBox(
                    width: 300, // Defina a largura desejada
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true, // Oculta o texto para o campo de senha
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Senha',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, insira sua senha';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20), // Espaço entre os campos
                  SizedBox(
                    width: 300, // Defina a largura desejada
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true, // Oculta o texto para o campo de senha
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Repita a Senha',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, repita sua senha';
                        }
                        if (!arePasswordsMatching(_passwordController.text, value)) {
                          return 'As senhas não coincidem';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 60), // Espaço entre os campos
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // As senhas coincidem e a validação foi bem-sucedida
                          Navigator.pushNamed(context, '/home');
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Cadastro realizado com sucesso!')),
                          );
                        }
                      },
                      child: const Text('Cadastrar'),
                    ),
                  ),
                  const SizedBox(height: 40), // Espaço entre os campos
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 150, right: 5),
                        child: Text(
                          'Faça login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
