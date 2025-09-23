import 'package:flutter/material.dart';

class Descript extends StatefulWidget {
  const Descript({super.key});

  @override
  State<Descript> createState() => _DescriptState();
}

class _DescriptState extends State<Descript> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: FloatingActionButton(onPressed: (){
           showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Container(
              width: 400,
              //height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Félicitation puzzle résolu", style: TextStyle(fontSize: 15)),
                  Text("Pays sahélien enclavé d’Afrique de l’Ouest, voisin du Mali, du Niger, du Bénin, du Togo, du Ghana et de la Côte d’Ivoire. Sa devise est « Unité, Progrès, Justice ».", style: TextStyle(fontSize: 12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color:  Colors.blue 
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          
                        },
                        icon: const Icon(Icons.replay),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color:  Colors.blue
                             
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
        }, child: Icon(Icons.add),),
      )
    );
  }
}