import 'dart:ui';
import 'package:palette_generator/palette_generator.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatefulWidget {
  final Burc gelenBurcDetay;
  const BurcDetay({required this.gelenBurcDetay, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    appbarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: appbarRengi,
          pinned: true,
          expandedHeight: 250,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.gelenBurcDetay.burcAdi + " burcu ozelikleri"),
            background: Image.asset(
              "images/${widget.gelenBurcDetay.burcBuyukResim}",
              fit: BoxFit.cover,
            ),
            centerTitle: true,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Container(
              child: Text(
                widget.gelenBurcDetay.burcDetayi,
                style: TextStyle(fontSize: 15),
              ),
              margin: EdgeInsets.all(8),
            )),
          ),
        )
      ],
    ));
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.gelenBurcDetay.burcBuyukResim}"));
    appbarRengi = _generator.dominantColor!.color;
    setState(() {});
    print(appbarRengi);
  }
}
