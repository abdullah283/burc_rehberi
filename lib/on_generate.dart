import 'package:burc_rehberi/burc_detail.dart';
import 'package:burc_rehberi/burc_list.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteOlusturma {
  static Route<dynamic>? routeOlusturma(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => burcListesi());
      case "burcDetay":
        final Burc gidecek = settings.arguments as Burc;
        return MaterialPageRoute(
            builder: (context) => BurcDetay(gelenBurcDetay: gidecek));
    }
  }
}
