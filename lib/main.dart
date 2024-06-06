import 'package:flutter/material.dart';

void main() {
  runApp(const AcaiLocate());
}

class AcaiLocate extends StatelessWidget {
  const AcaiLocate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Açaí Locate',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFF4E4),
        primarySwatch: Colors.purple,
      ),
      home: const AutenticaAcai(),
    );
  }
}

class AutenticaAcai extends StatelessWidget {
  const AutenticaAcai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 230,
              child: Image.asset('assets/logo.png'),
            ),
            const SizedBox(height: 60), // Espaço entre os campos
            // ignore: prefer_const_constructors
            Row(
              children: const [
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55.0),
                    child: Text(
                      'Login',
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
            const SizedBox(height: 60), // Espaço entre os campos
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Ação ao clicar no botão
                  print('Botão pressionado!');
                },
                child: const Text('Entrar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
