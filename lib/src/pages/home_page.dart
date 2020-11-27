import 'package:flutter/material.dart';
import 'package:preferenciausuarioapp/src/share_prefs/preferencia_usuario.dart';
import 'package:preferenciausuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  final prefs = new PrefenciasUsuario();
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: ${prefs.colorSecundario}'),
          Divider(),
           Text('Genero: ${prefs.genero}'),
          Divider(),
           Text('Nombre Usuario: ${prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }
}