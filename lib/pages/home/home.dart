import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mhybloc/pages/add/add.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text("Nama User"),
              subtitle: Text("Umur User"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => AddPage())));
        },
        child: Icon(Icons.add_reaction),
      ),
    );
  }
}
