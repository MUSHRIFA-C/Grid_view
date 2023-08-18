import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List image=[
    'images/1.png','images/2.png','images/3.png','images/4.png',
    'images/5.png','images/6.png','images/7.png','images/8.png'
  ];
  List place=['India','Korea','New Zealand','Paris','Bali','New York','Kerala','Sikkim'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: GridView.builder(
          itemCount: image.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0
        ),
            itemBuilder: (BuildContext context, int index) {
       return GridTile(
       footer: GridTileBar(
       backgroundColor: Colors.black54,
       title: Text(place[index]),
         subtitle: Text('beautiful view'),
       trailing: Icon(Icons.grade_outlined),
      ),
       child: Image.asset(image[index])
       );
      },
          )
      ),
        );
  }
}
