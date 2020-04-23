
import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

bool pop(BuildContext context, String retorno) {
  return Navigator.pop(context, retorno);
}
