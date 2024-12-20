import 'package:flutter/material.dart';
import 'componentes/jogo_da_velha.dart'; // Importação do componente Jogo da Velha

void main() {
  runApp(const App()); // Inicia o app
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Jogo da Velha';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: titulo), // Define a HomePage como tela inicial
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Função para atualizar o estado do aplicativo
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context), // Método para construir a AppBar
      body: _buildBody(), // Método para construir o corpo da tela
    );
  }

  // Método para criar a AppBar
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  // Método para construir o corpo da tela
  Widget _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTopContainer(), // Espaço superior
          _buildGameBoard(), // Tabuleiro do Jogo da Velha
          _buildBottomContainer(), // Espaço inferior
        ],
      ),
    );
  }

  // Método para o espaço superior
  Widget _buildTopContainer() {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        // Aqui você pode adicionar outros widgets ou texto, se necessário
      ),
    );
  }

  // Método para o tabuleiro do jogo da velha
  Widget _buildGameBoard() {
    return Expanded(
      flex: 7,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(216, 164, 167, 167),
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Colors.black, width: 5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(10, 25),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: JogoDaVelha(), // Apenas uma instância do Jogo da Velha
        ),
      ),
    );
  }

  // Método para o espaço inferior
  Widget _buildBottomContainer() {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.center,
        // Aqui você pode adicionar mais widgets, se necessário
      ),
    );
  }
}
