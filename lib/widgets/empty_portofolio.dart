import 'package:flutter/material.dart';
import 'package:vault_chain/core/utils/util.dart';

class EmptyPortofolio extends StatelessWidget {
  const EmptyPortofolio({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card.filled(
        margin: EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Belum ada koin',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: defaultTitleColor(context),
                ),
              ),
              Text(
                'Tambahkan beberapa koin untuk mulai melacak harga mereka '
                'dan tetap mengikuti pergerakan.',
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all<double>(1),
                  fixedSize: WidgetStateProperty.all(Size(double.infinity, 40)),
                ),
                child: Text('Tambahkan Koin'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
