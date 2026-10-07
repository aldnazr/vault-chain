import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      actionsPadding: const EdgeInsets.only(right: 4.0),
      leadingWidth: 50,
      leading: const Padding(
        padding: EdgeInsets.only(left: 14),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/app_logo.png'),
        ),
      ),
      titleSpacing: 10,
      title: const Text(
        'Vault Chain',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      actions: [
        IconButton(
          tooltip: 'Pengaturan',
          onPressed: () => context.push('/settings'),
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
