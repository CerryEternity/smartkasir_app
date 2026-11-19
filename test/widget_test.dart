import 'package:flutter_test/flutter_test.dart';
import 'package:smartkasir_app/models/produk.dart';

void main() {
  test('Produk toMap dan fromMap konsisten', () {
    const produk = Produk(
      kodeProduk: 'PRD-TEST',
      nama: 'Es Teh Manis Jumbo',
      kategori: 'Minuman',
      hargaBeli: 3000,
      hargaJual: 5000,
      stok: 50,
      gambarUrl: '',
    );

    final hasil = Produk.fromMap(produk.toMap());

    expect(hasil.kodeProduk, 'PRD-TEST');
    expect(hasil.nama, 'Es Teh Manis Jumbo');
    expect(hasil.hargaJual, 5000);
    expect(hasil.stok, 50);
  });
}
