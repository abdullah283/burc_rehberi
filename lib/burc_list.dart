import 'package:burc_rehberi/burc_create.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';

class burcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  burcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("burcListesi"),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: tumBurclar.length,
              itemBuilder: (Context, index) {
                return burcOlusturma(gelenBurc: tumBurclar[index]);
              })),
    );
  }
}

List<Burc> veriKaynaginiHazirla() {
  List<Burc> gecici = [];
  for (int i = 0; i < 12; i++) {
    Burc eklenecekBurc = Burc(
        Strings.BURC_ADLARI[i],
        Strings.BURC_TARIHLERI[i],
        Strings.BURC_GENEL_OZELLIKLERI[i],
        Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png",
        Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png");
    gecici.add(eklenecekBurc);
  }
  return gecici;
}
