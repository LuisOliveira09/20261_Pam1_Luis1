import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 243, 75, 33)),
        useMaterial3: true,
      ),
      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etec Adolpho Berezim - PAM1'),
        backgroundColor: Colors.redAccent,
      ),
      endDrawer: const Drawer(
        child: Center(child: Text('End Drawer'),),
      ),
      drawer: const Drawer(
        child: Center(child: Text('Drawer')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagem da Etec Adolpho Berezim
            ClipRRect(
              borderRadius: BorderRadius.circular(15), // Bordas arredondadas para um visual moderno
              child: Image.network(
                'https://bkpsitecpsnew.blob.core.windows.net/uploadsitecps/sites/1/2022/08/cps-logo-identidade.jpg', // Link da foto da escola
                width: 350,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Caso o link falhe, mostra um ícone de erro
                  return const Icon(Icons.school, size: 100, color: Colors.grey);
                },
              ),
            ),
            const SizedBox(height: 20), 
            const Text(
              'Desenvolvimento com Flutter',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Unidade Mongaguá',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Casa'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        ],
      ),
    );
  }
}