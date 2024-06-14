import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SegundaPag extends StatelessWidget {
const SegundaPag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('História de São Sebastião'),
              centerTitle: true,
                backgroundColor: const Color.fromARGB(255, 45, 123, 224),
      ),
      backgroundColor: const Color.fromARGB(255, 52, 144, 235),
      body: Center(
        child: SingleChildScrollView(
          child: Column
          (children:
                [Image.asset(
                'assets/images/SaoSebastiao.jpg', width: 400, height: 200,), 
          
                const Gap(20),
                
                Container(
              color: const Color.fromARGB(255, 45, 123, 224),
                height: 50,
                width: 400,
                margin: const EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
               child: const Text ('Povoação indígena:',
               style: TextStyle(fontSize: 22  ),)
              ),
          
             Container(
              color: const Color.fromARGB(255, 45, 123, 224),
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
               child: const Text ('É a cidade mais antiga do litoral norte. Antes da colonização portuguesa, a região de São Sebastião era ocupada por Tupinambás e Tupiniquins, sendo a serra de Boiçucanga uma divisa natural das terras.',
               style: TextStyle(fontSize: 22  ),),),

              const Gap(50),

              Container(
              color: const Color.fromARGB(255, 45, 123, 224),
                height: 50,
                width: 400,
                margin: const EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
               child: const Text ('Ocupação portuguesa:',
               style: TextStyle(fontSize: 22  ),)
              ),

               Container(
              color: const Color.fromARGB(255, 45, 123, 224),
                height: 300,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
               child: const Text ('A ocupação portuguesa ocorre com o início da História do Brasil, após a divisão do território em Capitanias Hereditárias. Em 1608, aproximadamente, João de Abreu e Diogo de Unhate  obtiveram sesmaria em São Sebastião sendo eles os sesmeiros que iniciaram a povoação com agricultura, pesca e alguns engenhos de madeira de cana-de-açúcar. ',
               style: TextStyle(fontSize: 22  ),),),

               Container(
              color: const Color.fromARGB(255, 45, 123, 224),
                height: 150,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
               child: const Text ('Isto possibilitou a elevação do povoado à categoria de vila em 16 de março de 1636 e a wmancipação político-administrativa (elevação à categoria de cidade) em 20 de abril de 1875. ',
               style: TextStyle(fontSize: 22  ),),)
               ] ),
        ),
    ),);

  }
}