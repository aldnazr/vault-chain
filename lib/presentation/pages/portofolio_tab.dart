import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
          return RefreshIndicator(
            onRefresh: () => porto.loadPortofolio(),
            child: porto.portofolio.isEmpty
                ? SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: const Center(child: Text('Tidak ada data')),
                    ),
                  )
                : ListView.builder(
                    primary: false,
                    itemCount: porto.portofolio.length,
                    itemBuilder: (context, index) {
                      final data = porto.portofolio[index];
                      final fav = porto.isFavorite(data.id);
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
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
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
