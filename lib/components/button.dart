import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
        color: const Color.fromARGB(255, 137, 192, 139), borderRadius: BorderRadius.circular(48)),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(width:10,),
            //icon
            const Icon(Icons.arrow_forward, color: Colors.white,),
          ],
        )
         //Text(text, style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
