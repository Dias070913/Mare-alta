import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marealtaflutter/Quartapagina.dart';
import 'package:marealtaflutter/Segundapag.dart';
import 'package:marealtaflutter/Terceirapag.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MainApp(),));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //define o titulo da app
              title: const Text('Maré Alta APP'),
              //centraliza o título
              centerTitle: true,
              //muda a cor do background
                
                backgroundColor: const Color.fromARGB(255, 45, 123, 224),
               //adicionar botões de ação antes do título
               leading: 
               IconButton(onPressed: () {} , icon:const Icon(Icons.arrow_back),),
              
                ),
                backgroundColor: const Color.fromARGB(255, 52, 144, 235),
        body:  Center(
          child: SingleChildScrollView(
            child: Column(
            children: <Widget> [
            
            Container(
              height: 100,
              width: 500,
                decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 45, 123, 224),
                  borderRadius: BorderRadius.circular(50)
                ),
                
              alignment: Alignment.center,
               child: const Text ('Escolha o assunto sobre São Sebastião',
               style: TextStyle(fontSize: 22  ),)
              ),
            
              const Gap(60),
            
            const Text ('História de São Sebastião',
            style: TextStyle(
              fontSize: 20
            ),),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SegundaPag()),);
                  
                  ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 80, 156, 218),);
                    
                    const Text('História',
                  style: TextStyle(fontSize: 30),);
                  }, child: null,
              ),
              
              const Gap(30),
            
              const Text('Locais para visitar',
              style: TextStyle(
              fontSize: 20
            ),),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Terceirapag()),);
                  
                  ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 80, 156, 218),);
                    
                    const Text('História',
                  style: TextStyle(fontSize: 30),);
                  }, child: null,
              ),
            
              const Gap(30),
            
              const Text('Hotéis',
              style: TextStyle(
              fontSize: 20
            ),),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const QuartaPag()),);
                  
                  ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 80, 156, 218),);
                    
                    const Text('História',
                  style: TextStyle(fontSize: 30),);
                  }, child: null,
              ),
            
            const Gap(30),
            
              Image.asset(
                  'assets/images/SaoSebastiao.jpg', width: 400, height: 200,),
            ]
            ),
          )),
      ),
    );
  }
}