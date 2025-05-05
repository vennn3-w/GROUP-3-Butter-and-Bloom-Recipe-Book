import 'package:flutter/material.dart';
import 'package:myapp/components/button.dart'; // Import the material package from Flutter.

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //set the background color of the scaffold to green
        //backgroundColor: const Color.fromARGB(255, 61, 167, 64),
        body: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceAround, // set the mainAxisAlignment to start
          children: <Widget>[
           const SizedBox(height: 25), //add a space with 25 height
            // Add the image with the network image and the link
            Image.network(
                'https://i.pinimg.com/736x/a9/1f/b8/a91fb8047d42147af404500ae8bc3eb3.jpg',
                fit: BoxFit.fill,
            ),

            MyButton(
              text: "Let's Cook",
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ));
  }
}
