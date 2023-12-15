import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class Pesanan with ChangeNotifier {
  List<int> _pesanan = [0,0,0,0,0,0];

  List<int> get pesanan => _pesanan;

  void tambah_pesanan(index) {
    _pesanan[index]++;
    notifyListeners();
  }

  void kurangin_pesanan(index) {
    if(_pesanan[index] > 0)
	    _pesanan[index]--;
	    notifyListeners();
  }

}


