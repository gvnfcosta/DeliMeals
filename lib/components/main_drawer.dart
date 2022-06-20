import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.red[500],
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'Raleway-Regular',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(255, 244, 54, 54),
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: Theme.of(context).colorScheme.secondary,
          alignment: Alignment.bottomLeft,
          child: const Text(
            'Vamos Cozinhar?',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                fontSize: 22,
                color: Colors.white),
          ),
        ),
        const SizedBox(height: 40),
        _createItem(
          Icons.restaurant,
          'Refeições',
          () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
        ),
        _createItem(
          Icons.settings,
          'Configurações',
          () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS),
        ),
      ],
    ));
  }
}
