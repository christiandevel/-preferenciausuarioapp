import 'package:flutter/material.dart';
import 'package:preferenciausuarioapp/src/pages/home_page.dart';
import 'package:preferenciausuarioapp/src/pages/setting_page.dart';
import 'package:preferenciausuarioapp/src/share_prefs/preferencia_usuario.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PrefenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final prefs = new PrefenciasUsuario();
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
           HomePage.routeName : (BuildContext context) => HomePage(),
           SettingsPage.routeName : (BuildContext context) => SettingsPage()
      },
    );
  }
}