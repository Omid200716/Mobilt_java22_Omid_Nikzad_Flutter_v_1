import 'package:flutter/material.dart';
import 'package:second/views/about/about.dart';

class HomeView extends StatelessWidget {
   HomeView({Key? key}) : super(key: key); // Corrected here

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  labelText: 'Skriv något',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
            ),
            ElevatedButton(
              child: Text('Gå till about sidan'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutView(dataFromHome: myController.text)),
                ); // Corrected here
              },
            ),
            TextButton(
              
              child:Text('Tryck mig'),
              onPressed: (){},
              ),
              Image.network('https://eu-images.contentstack.com/v3/assets/blt781c383a1983f673/bltc3e5bba550bbafcd/621cd9d649d9ac45be97463f/MrBeanDigital(2).jpg?width=800&auto=webp&format=png',
              width: 300.0,
              height: 300.0,
              fit: BoxFit.cover,)
          ],
        ),
      ),
    );
  }
}
