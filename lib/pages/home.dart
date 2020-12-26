import 'package:entrando/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
        body: Center(
            child: Column(children: [
      Text('Nombre: ${authService.user.displayName}'),
      Text('email: ${authService.user.email}'),
      CircleAvatar(
        backgroundImage: NetworkImage(
          authService.user.photoURL,
        ),
      ),
      RaisedButton(
        child: Text('Cerrar Sesión ${authService.user.displayName}'),
        onPressed: () {
          authService.signOut();
        },
      ),
    ])));
  }
}
