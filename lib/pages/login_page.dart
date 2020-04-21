import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Carros"),
        ),
        body: _body());
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _textForm("Login", "Digite o Login", controller: _tLogin),
            SizedBox(
              height: 20,
            ),
            _textForm("Senha", "Digite a Senha",
                isPasswordField: true, controller: _tSenha),
            SizedBox(
              height: 20,
            ),
            _button("Login", _onClickLogin),
          ],
        ),
      ),
    );
  }

  _textForm(String label, String hint,
      {bool isPasswordField = false, TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      obscureText: isPasswordField,
      validator: (String text){
        if(text.isEmpty){
          return "Digite o Texto";
        }
        return null;
      },
      style: TextStyle(
        fontSize: 25,
        color: Colors.blue,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.green, fontSize: 16),
      ),
    );
  }

  _button(String text, Function onPressed) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        onPressed: onPressed,
      ),
    );
  }

  _onClickLogin() {
    bool formOk = _formKey.currentState.validate();

    if (!formOk) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");
  }
}
