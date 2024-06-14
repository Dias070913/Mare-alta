import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuartaPag extends StatelessWidget {
const QuartaPag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotéis em São Sebastião'),
              centerTitle: true,
                backgroundColor: const Color.fromARGB(255, 45, 123, 224),
      ),
       backgroundColor: const Color.fromARGB(255, 52, 144, 235),
      body: Center(
        child: SingleChildScrollView(
          child: Column
                (children:
                [ Container(
                  color: const Color.fromARGB(255, 45, 123, 224),
                    height: 50,
                    width: 400,
                    margin: const EdgeInsets.only(top: 20.0),
                  alignment: Alignment.center,
                   child: const Text ('Amora Hotel:',
                   style: TextStyle(fontSize: 22  ),),),
               
            Image.asset(
                      'assets/images/AmoraHotel.jpg', width: 400, height: 400,),
                  
            
                  Container(
                  color: const Color.fromARGB(255, 45, 123, 224),
                    height: 50,
                    width: 400,
                    margin: const EdgeInsets.only(top: 20.0),
                  alignment: Alignment.center,
                   child: const Text ('Hiu Hotel:',
                   style: TextStyle(fontSize: 22  ),),),
            
                   Image.asset(
                      'assets/images/HiuHotel.jpg', width: 400, height: 300,),
          
                      Container(
                  color: const Color.fromARGB(255, 45, 123, 224),
                    height: 50,
                    width: 400,
                    margin: const EdgeInsets.only(top: 20.0),
                  alignment: Alignment.center,
                   child: const Text ('Villa l´Mare Hotel:',
                   style: TextStyle(fontSize: 22  ),),),
            
            const Gap(20),

                   Image.asset(
                      'assets/images/VillaMare.jpg', width: 400, height: 300,),
          
                      
                 
               ] ),
        ),
    ));

}

}