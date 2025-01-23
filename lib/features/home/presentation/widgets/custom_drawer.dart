import 'package:btz/routes/administracao_route.dart';
import 'package:btz/routes/login_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Administração'),
            leading: Icon(Icons.admin_panel_settings),
            onTap: () {
              Modular.to.pushNamed(AdministracaoModule.ROUTE);
            },
          ),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Modular.to.popAndPushNamed(LoginModule.ROUTE);
            },
          ),
        ],
      ),
    );
  }
}
