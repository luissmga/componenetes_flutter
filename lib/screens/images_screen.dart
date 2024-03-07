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
      child: Image.network('https://png.pngtree.com/png-clipart/20190330/ourlarge/pngtree-cartoon-cow-black-and-white-hand-painted-elements-png-image_893878.jpg'),
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
           image: 'https://png.pngtree.com/png-clipart/20190330/ourlarge/pngtree-cartoon-cow-black-and-white-hand-painted-elements-png-image_893878.jpg'),),
      ],
    );
  }
 
}
