import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/data/services/providers/portofolio_provider.dart';
import 'package:vault_chain/widgets/empty_portofolio.dart';

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
          return RefreshIndicator(
            onRefresh: () => porto.loadPortofolio(),
            child: porto.portofolio.isEmpty
                ? SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: EmptyPortofolio(),
                  )
                : ListView.builder(
                    itemCount: porto.portofolio.length,
                    itemBuilder: (context, index) {
                      final data = porto.portofolio[index];
                      final fav = porto.isFavorite(data.id);
                      return Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(
                              top: 0,
                              bottom: 0,
                              left: 18.0,
                              right: 16.0,
                            ),
                            onTap: () => Navigator.of(
                              context,
                              rootNavigator: true,
                            ).pushNamed('/detail_page', arguments: data.id),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(data.image),
                              backgroundColor: Colors.transparent,
                            ),
                            title: Text(data.name),
                            subtitle: Text(data.symbol.toUpperCase()),
                            trailing: IconButton(
                              onPressed: () {
                                porto.toggleFavorite(data, false);
                              },
                              isSelected: fav,
                              icon: Icon(Icons.star_border_outlined),
                              selectedIcon: Icon(Icons.star),
                            ),
                          ),
                          if (index < porto.portofolio.length - 1)
                            const Divider(height: 0, thickness: 0.7),
                        ],
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
