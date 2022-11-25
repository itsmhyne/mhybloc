import 'package:flutter/material.dart';
import 'package:mhybloc/bloc/export.dart';
import 'package:mhybloc/pages/add/add.dart';
import 'package:mhybloc/pages/edit/edit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: userBloc,
        builder: (context, state) {
          if (state.allUsers.isEmpty) {
            return const Center(
              child: Text("Belum ada data."),
            );
          }
          return ListView.builder(
              itemCount: state.allUsers.length,
              itemBuilder: (context, index) {
                UserModel userModel = state.allUsers[index];
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => EditPage(userModel))));
                  },
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),
                  title: Text(userModel.name),
                  subtitle: Text(
                    "Umur ${userModel.age} tahun",
                    style: TextStyle(fontSize: 12),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        userBloc.add(DeleteUserEvent(userModel));
                      },
                      icon: const Icon(Icons.delete)),
                );
              });
        },
      ),
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
