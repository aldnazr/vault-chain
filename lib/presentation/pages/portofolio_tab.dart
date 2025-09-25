import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/data/services/providers/portofolio_provider.dart';

class PortofolioTab extends StatefulWidget {
  const PortofolioTab({super.key});

  @override
  State<PortofolioTab> createState() => PortofolioTabState();
}

class PortofolioTabState extends State<PortofolioTab> {
  var isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<PortofolioProvider>(
        builder: (context, porto, child) {
          return porto.portofolio.isEmpty
              ? Center(child: Text('Tidak ada data'))
              : Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => porto.loadPortofolio(),
                    child: ListView.builder(
                      itemCount: porto.portofolio.length,
                      itemBuilder: (context, index) {
                        final data = porto.portofolio[index];
                        final fav = porto.isFavorite(data.id);
                        return ListTile(
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
                            selectedIcon: Icon(Icons.star),
                            icon: Icon(Icons.star_border_outlined),
                          ),
                        );
                      },
                    ),
                  ),
                );
        },
      ),
    );
  }
}
