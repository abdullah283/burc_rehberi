import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class burcOlusturma extends StatelessWidget {
  final Burc gelenBurc;
  const burcOlusturma({required this.gelenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.amber[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "burcDetay", arguments: gelenBurc);
            },
            subtitle: Text(gelenBurc.burcTarihi),
            title: Text(gelenBurc.burcAdi),
            leading: Image.asset("images/" + gelenBurc.burcKucukResim),
          ),
        ),
      ),
    );
  }
}
