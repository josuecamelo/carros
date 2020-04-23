import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginApi {
  static bool login(String login, String senha){
    //var url = 'https://carros-springboot.heroku.com/api/v2/login';
    var url = "http://livrowebservices.com.br/rest/login";
    /*Map<String, String> headers ={
      "Content-Type" : "application/json"
    };

    Map params ={
      "username": login,
      "password": senha
    };

    String s = json.encode(params);

    try {
      var response = await http.post(url, body: s, headers: headers);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      Map mapResponse = json.decode(response.body);
      String nome = mapResponse["nome"];
      String email = mapResponse["email"];
      print(nome);
      print(email);
    } catch (e) {
      print(e);
    }*/

    return true;
  }
}