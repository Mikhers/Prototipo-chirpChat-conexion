import 'dart:convert';
import 'package:chirp_chat/models/models.dart';
import 'package:http/http.dart' as http;


const String urlAPI = 'https://drf-api-chirp-chat.onrender.com/usuario/';


class usuarioService{

  Future<List<Usuario>> getUser() async {
    final response = await http.get(Uri.parse(urlAPI));
    if(response.statusCode == 200){
      List<Usuario> user = [];
      String body = utf8.decode(response.bodyBytes);
      final json_data = json.decode(body);
      for(var item in json_data){
        user.add(Usuario.fromMap(item));
      }
      return user;
    }else{
      throw Exception("Fallo la conexión");
    }
  }
}


//Future<dynamic> post(String api) async{}
//Future<dynamic> put(String api) async{}
//Future<dynamic> patch(String api) async{}