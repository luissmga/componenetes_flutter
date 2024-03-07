import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:practica_basic_app/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body:ListView(
        children: [
          cardImage1(),
          imageFade(),
        ]
      ),
    );
  }

 
  Card cardImage1(){
    return Card(
      shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                  ),
        margin: const EdgeInsets.all(15),
        elevation: 30,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
          children: [ 
          const  Image(
              image: AssetImage('assets/img/rec.jpg'),
              ),

          Container(
              padding:const EdgeInsets.all(10),
              child: Text(
                'Amigos',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
            ),
       ],
          ),
        ),
      );
  }
  SizedBox image2(){
    return SizedBox(
      height: 200.0,
      width: 100.0,
      child: Image.network('https://media.glamour.mx/photos/654da7d483a16dc594201d3a/16:9/w_1920,c_limit/kenia-os-look-women-of-the-year-2023.jpg'),
    );

  }
   Stack imageFade() {
    return Stack( 
      children: <Widget> [
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(child: FadeInImage.memoryNetwork(
           placeholder: kTransparentImage,
           image: 'https://media.glamour.mx/photos/654da7d483a16dc594201d3a/16:9/w_1920,c_limit/kenia-os-look-women-of-the-year-2023.jpg'),),
      ],
    );
  }
 
}
