import 'package:flutter/material.dart';

class Terceirapag extends StatelessWidget {
const Terceirapag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locais para visitar em São Sebastião'),
              centerTitle: true,
                backgroundColor: const Color.fromARGB(255, 45, 123, 224),
      ),
       backgroundColor: const Color.fromARGB(255, 52, 144, 235),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children:
                [  Container(
                color: const Color.fromARGB(255, 45, 123, 224),
                  height: 50,
                  width: 400,
                  margin: const EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                 child: const Text ('Praia de Juquehy:',
                 style: TextStyle(fontSize: 22  ),),),
           
                 
          Image.asset(
                    'assets/images/PraiaJuquehy.jpg', width: 400, height: 400,),
                
          
                Container(
                color: const Color.fromARGB(255, 45, 123, 224),
                  height: 50,
                  width: 400,
                  margin: const EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                 child: const Text ('Praia de Camburizinho:',
                 style: TextStyle(fontSize: 22  ),),),
          
                 Image.asset(
                    'assets/images/PraiaCamburizinho.jpg', width: 400, height: 300,),

                    Container(
                color: const Color.fromARGB(255, 45, 123, 224),
                  height: 50,
                  width: 400,
                  margin: const EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                 child: const Text ('Praia de Calhetas:',
                 style: TextStyle(fontSize: 22  ),),),
          
                 Image.asset(
                    'assets/images/PraiaCalhetas.jpg', width: 400, height: 300,),

                    Container(
                color: const Color.fromARGB(255, 45, 123, 224),
                  height: 50,
                  width: 400,
                  margin: const EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                 child: const Text ('Cachoeira da Serpente:',
                 style: TextStyle(fontSize: 22  ),),),
          
                 Image.asset(
                    'assets/images/CachoeiraSerpente.jpg', width: 400, height: 300,),
          
                ]
          ),
        ),
      ),
    );

}

}