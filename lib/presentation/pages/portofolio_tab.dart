import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/data/services/providers/detail_provider.dart';
import 'package:vault_chain/data/services/providers/portofolio_provider.dart';

class PortofolioTab extends StatefulWidget {
  const PortofolioTab({super.key});

  @override
  State<PortofolioTab> createState() => PortofolioTabState();
}

class PortofolioTabState extends State<PortofolioTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<PortofolioProvider>(
        builder: (context, porto, child) {
          return Expanded(
            child: ListView.builder(
              itemCount: porto.portofolio.length,
              itemBuilder: (context, index) {
                final data = porto.portofolio[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data.image),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text(data.name),
                  subtitle: Text(data.symbol.toUpperCase()),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.star),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
