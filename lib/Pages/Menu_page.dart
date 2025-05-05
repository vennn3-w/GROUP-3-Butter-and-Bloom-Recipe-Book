import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 247, 158),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEFECE4),
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.blueAccent),
        centerTitle: true,
        title: SizedBox(
          height: 90, // Adjust the height as needed
          child: Image.network(
            'https://i.pinimg.com/736x/a7/51/cd/a751cd39d3585e233e07c76a6a3b6ffe.jpg',
            fit: BoxFit.fill, // Adjust BoxFit as needed
          ),
        ),
      ),

      //
      body: Column(
        children: [
          //banner
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 255, 234),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "im cooked this season",
                      style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                    ),

                    //button
                    MyButton(text: 'Tap here', onTap: () {}),
                  ],
                ),

                //image
                Image.network(
                  'https://i.pinimg.com/736x/54/c4/7f/54c47fe408c4fa0a8ef899ba75ca77d8.jpg',
                  height: 100,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 7, 48, 2),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 38, 34, 34),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),

          //mnulist
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
                fontSize: 18,
              ),
            ),
          ),

          //      const SizedBox(height: 20),
          //     SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: Row(
          //           children: List.generate(
          //             Foodmenu.length,
          //             (index) => Container(
          //                decoration: BoxDecoration(
          //                 color: Color.fromARGB(255, 245, 255,
          //                 borderRadius: BorderRadius.circular(20),
          //               ),
          //              margin: const EdgeInsets.only(left: 10),
          //             child: Text(
          //               Foodmenu[index],
          //              style: Text(TextStyle),
          //             ),
          //          ),
          //        ),
          //      ),
          //  )

          //categories

          //popular food
        ],
      ),
    );
  }
}
