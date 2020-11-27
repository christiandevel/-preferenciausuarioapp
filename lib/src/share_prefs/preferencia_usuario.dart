import 'package:shared_preferences/shared_preferences.dart';

class PrefenciasUsuario {

  static final PrefenciasUsuario _instancia = new PrefenciasUsuario._internal();

  factory PrefenciasUsuario(){
    return _instancia;
  }

  PrefenciasUsuario._internal();
  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // Ninguna de estas propiedades se usan
  // bool _colorSecundario;
  // int  _genero;
  // String _nombre;

  // GET y SET

  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  
  // GET y SET
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }
  
  // GET y SET
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value) {
    _prefs.setString('nombreUsuario', value);
  }


  // GET y SET de la ultima pagina
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }

}