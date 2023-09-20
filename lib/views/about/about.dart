import 'package:flutter/material.dart';
import 'package:second/views/home/home.dart';

class AboutView extends StatelessWidget {
  final String dataFromHome;

  AboutView({required this.dataFromHome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(  
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Text('Tillbaka'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeView()));
                    },
                  ),
                  Text(
                    'hello',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                        fontSize: 20),
                  ),
                  Text(
                    dataFromHome,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  ImageAsset(),
                ],
              ),
              Container(
                color: Colors.red,
                height: 200,
                child: Center(child: Text("Komponent 1")),
              ),
              Container(
                color: Colors.blue,
                height: 200,
                child: Center(child: Text("Komponent 2")),
              ),
              Container(
                color: Colors.green,
                height: 200,
                child: Center(child: Text("Komponent 3")),
              ),
              Container(
                color: Colors.yellow,
                height: 200,
                child: Center(child: Text("Komponent 4")),
              ),
              Container(
                color: Colors.purple,
                height: 200,
                child: Center(child: Text("Komponent 5")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageAsset extends StatelessWidget {
  const ImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/image1.png');

    return Image(
      image: assetImage,
      width: 250,
      height: 250,
    );
  }
}
