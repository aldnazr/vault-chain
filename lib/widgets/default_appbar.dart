import 'package:flutter/material.dart';
import 'package:vault_chain/core/utils/util.dart';

class DefaultAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: defaultBackground(context),
      surfaceTintColor: defaultBackground(context),
      actionsPadding: EdgeInsets.only(right: 4.0),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/app_logo.png'),
          ),
          SizedBox(width: 10.0),
          Text(
            'Vault Chain',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      actions: [
        IconButton(
          tooltip: 'Pengaturan',
          onPressed: () =>
              Navigator.of(context, rootNavigator: true).pushNamed('/setting'),
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}
