import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 75,
              height: 75,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Alucard",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text("alucard@mlbb.com"),
            const SizedBox(
              height: 20,
            ),
            Text("=====  MASAKAN  ====="),
            const SizedBox(
              height: 5,
            ),
            Text("Spageti"),
            const SizedBox(
              height: 5,
            ),
            Text("100 porsi"),
            const SizedBox(
              height: 5,
            ),
            Text("Mudah"),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 150,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
