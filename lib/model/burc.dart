class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);
  get burcKucukResim => _burcKucukResim;
  get burcAdi => _burcAdi;
  get burcTarihi => _burcTarihi;
  get burcDetayi => _burcDetayi;
  get burcBuyukResim => _burcBuyukResim;
  @override
  String toString() {
    return "$_burcKucukResim ve $_burcBuyukResim";
  }
}
