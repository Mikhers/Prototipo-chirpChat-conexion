import 'package:chirp_chat/models/models.dart';
import 'package:chirp_chat/services/usuario.service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddFriends extends StatelessWidget {
  const AddFriends({Key? key}) : super(key: key);

  Future<List<Usuario>> obtenerUsuarios() async {
    final service = usuarioService();
    return await service.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Usuario>>(
      future: obtenerUsuarios(),
      builder: (BuildContext context, AsyncSnapshot<List<Usuario>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Muestra un indicador de carga mientras se obtienen los datos
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Maneja cualquier error que se produzca durante la obtención de los datos
          return Text('Error: ${snapshot.error}');
        } else {
          // Los datos se obtuvieron correctamente, puedes acceder a ellos en snapshot.data
          List<Usuario> usuarios = snapshot.data!;
          return Scaffold(
            body: ListView.builder(
              itemCount: usuarios.length,
              itemBuilder: (BuildContext context, int index) {
                Usuario usuario = usuarios[index];
                return Card(
                  child: ListTile(
                    leading: Image.network(usuario.imagen ?? "https://static.vecteezy.com/system/resources/previews/008/442/086/original/illustration-of-human-icon-user-symbol-icon-modern-design-on-blank-background-free-vector.jpg"),
                    title: Text(usuario.user_name),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}