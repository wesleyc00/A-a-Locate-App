import 'package:flutter/material.dart';
import 'screens/cadastro.dart';
import 'screens/home.dart';

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
      initialRoute: '/login',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const AutenticaAcai(),
        '/cadastro': (context) => const CadastroUsuario(),
      },
    );
  }
}

class AutenticaAcai extends StatefulWidget {
  const AutenticaAcai({super.key});

  @override
  State<AutenticaAcai> createState() => _AutenticaAcaiState();
}

class _AutenticaAcaiState extends State<AutenticaAcai> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? validateEmail(String? value) {
    const pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
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
                  const SizedBox(height: 60), // Espaço entre os campos
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          Navigator.pushNamed(context, '/home');
                        }
                      },
                      child: const Text('Entrar'),
                    ),
                  ),
                  const SizedBox(height: 40), // Espaço entre os campos
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 97, right: 5),
                        child: Text(
                          'Não tem uma conta?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/cadastro');
                        },
                        child: const Text(
                          'Cadastre-se',
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
