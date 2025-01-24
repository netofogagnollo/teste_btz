import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Cabeçalho do Drawer (opcional)
          const UserAccountsDrawerHeader(
            accountName: Text("Darci"),
            accountEmail: Text("darci@btz.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.admin_panel_settings),
            title: const Text('Administração'),
            onTap: () {
              Beamer.of(context).beamToNamed('/adm');
            },
          ),
          // Botão de Logout
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Beamer.of(context).beamToReplacementNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
