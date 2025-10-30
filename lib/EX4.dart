import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            CustomCard(
              title: 'OOP', 
              background: Color(0xFF90CAF9),
              color: Color.fromARGB(255, 169, 194, 236)
            ),
            CustomCard(
              title: 'DART', 
              background: Color(0xFF64B5F6),
              color: Color.fromARGB(255, 84, 170, 240),
            ),
            GradientCard(title: 'FLUTTER')
          ],
        ),
      ),

    );
  }
}

 class CustomCard extends StatelessWidget{
  final String title;
  final Color background;
  final Color color;

  const CustomCard({
    super.key,
    required this.title,
    required this.background,
    required this.color,
  });

  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
class GradientCard extends StatelessWidget{
  final String title;

const GradientCard({super.key, required this.title});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.blue[100]!,
            Colors.blue[300]!,
            Colors.blue[600]!,
            Colors.blue[900]!,
          ],
        )
      ),

      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}