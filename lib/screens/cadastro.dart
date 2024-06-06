import 'package:flutter/material.dart';

class CadastroUsuario extends StatelessWidget {
  const CadastroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 230,
                  child: Image.asset('assets/logo.png'),
                ),
                const SizedBox(height: 20), // Espaço entre os campos
                // ignore: prefer_const_constructors
                Row(
                  children: const [
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
                const SizedBox(
                  width: 300, // Defina a largura desejada
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail',
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Espaço entre os campos
                const SizedBox(
                  width: 300, // Defina a largura desejada
                  child: TextField(
                    obscureText: true, // Oculta o texto para o campo de senha
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Espaço entre os campos
                const SizedBox(
                  width: 300, // Defina a largura desejada
                  child: TextField(
                    obscureText: true, // Oculta o texto para o campo de senha
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Repita a Senha',
                    ),
                  ),
                ),
                const SizedBox(height: 60), // Espaço entre os campos
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Ação ao clicar no botão
                      print('Botão pressionado!');
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
    );
  }
}
