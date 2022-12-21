import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailScreen');


  final String product  ;
  final and;
  final sup;
  const ItemDetailsScreen ({Key? key, required this.product, required this.and, required this.sup}) : super(key: key);
  
  @override 
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del producto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              product  ,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Center(
            child: Container(
              width: 700,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/pic${and +1}.jpg',), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                if (sup == 0)...[
                  const Text('PERRO   : Mamífero carnívoro doméstico de la'
                      ' familia de los cánidos', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 1)...[
                  const Text('VACA  : Mamífero rumiante bóvido, hembra, de '
                      'unos 150 cm de altura', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 2)...[
                  const Text('LEON  : Mamífero felino de 250 a 350 cm de '
                      'longitud (cola incluida), pelaje pardo claro ', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 3)...[
                  const Text('GATO  : Mamífero felino de tamaño generalmente'
                      ' pequeño, cuerpo flexible', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 4)...[
                  const Text('JIRAFA  : Mamífero rumiante de unos 5 m de alto,'
                      ' pelaje amarillento repleto de manchas leonadas', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 5)...[
                  const Text('GUEOPARDO  : es un miembro atípico de la familia '
                      'de los félidos. Es el único representante '
                      'vivo del género Acinonyx', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 6)...[
                  const Text('ELEFANTE  :  son una familia de mamíferos '
                      'placentarios del orden Proboscidea.', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 7)...[
                  const Text('CABALLO  : es un mamífero perisodáctilo '
                      'domesticado de la familia de los équidos.', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 8)...[
                  const Text('PAISAJE  : Extensión de terreno vista'
                      ' desde un lugar determinado y considerada como espectáculo.', style: TextStyle(fontSize: 25),
                  ),
                ]else if (sup == 9)...[
                  const Text('CASA  : Construcción cubierta destinada a ser habitada.', style: TextStyle(fontSize: 25),
                  ),
                ]
              ],
            ),
          )
        ],
      ),
    );
  }

}

