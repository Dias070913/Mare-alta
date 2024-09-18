import 'package:flutter/material.dart';
import 'hotel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escolha seu Hotel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CidadesScreen(),
    );
  }
}

class CidadesScreen extends StatelessWidget {
  const CidadesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha uma cidade'),
      ),
      backgroundColor: const Color.fromARGB(255, 151, 127, 176),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('São Sebatião'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HoteisScreen(
                    cidade: 'São Sebatião',
                    hoteis: [
                      Hotel(nome: 'Hotel Copacabana Palace', 
                      localizacao: 'São Sebatião', 
                      quartosDisponiveis: 10, 
                      precoDiaria: 800.0, 
                      pathToImg: 'img/amora.png'),
                      Hotel(nome: 'Hotel Ipanema', 
                      localizacao: 'São Sebatião', 
                      quartosDisponiveis: 15, 
                      precoDiaria: 500.0,
                       pathToImg: ''),
                    ],
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Guarujá'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HoteisScreen(
                    cidade: 'Guarujá',
                    hoteis: [
                      Hotel(nome: 'Hotel Fasano',
                       localizacao: 'Guarujá', 
                       quartosDisponiveis: 5, 
                       precoDiaria: 1000.0,
                       pathToImg: ''),
                      
                      Hotel(nome: 'Hotel Unique',
                       localizacao: 'Guarujá', 
                       quartosDisponiveis: 7, 
                       precoDiaria: 1200.0,
                       pathToImg: ''),
                    ],
                  ),
                ),
              );
            },
          ),
          
          ListTile(
            title: const Text('Santos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HoteisScreen(
                    cidade: 'Santos',
                    hoteis: [
                      Hotel(nome: 'Hotel Bahia Othon', 
                      localizacao: 'Santos', 
                      quartosDisponiveis: 8, 
                      precoDiaria: 700.0,
                      pathToImg: ''),
                      
                      Hotel(nome: 'Hotel Pestana', 
                      localizacao: 'Santos', 
                      quartosDisponiveis: 12, 
                      precoDiaria: 550.0,
                      pathToImg: ''),
                    ],
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Ubatuba'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HoteisScreen(
                    cidade: 'Ubatuba',
                    hoteis: [
                      Hotel(nome: 'Hotel Bahia Othon', 
                      localizacao: 'Ubatuba', 
                      quartosDisponiveis: 8, 
                      precoDiaria: 700.0, 
                      pathToImg: 'ojf'),

                      Hotel(nome: 'Hotel Pestana', 
                      localizacao: 'Ubatuba', 
                      quartosDisponiveis: 12, 
                      precoDiaria: 550.0, 
                      pathToImg: 'foj'),
                    ],
                  ),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}

class HoteisScreen extends StatelessWidget {
  final String cidade;
  final List<Hotel> hoteis;

  const HoteisScreen({super.key, required this.cidade, required this.hoteis});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotéis em $cidade'),
      ),
      body: ListView.builder(
        itemCount: hoteis.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(hoteis[index].nome),
            subtitle: Text('Quartos disponíveis: ${hoteis[index].quartosDisponiveis}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HotelDetalhesScreen(hotel: hoteis[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class HotelDetalhesScreen extends StatelessWidget {
  final Hotel hotel;

  const HotelDetalhesScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hotel.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Localização: ${hotel.localizacao}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Quartos disponíveis: ${hotel.quartosDisponiveis}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Preço da diária: R\$ ${hotel.precoDiaria.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18)),
            
          ],
        ),
      ),
    );
  }
}

