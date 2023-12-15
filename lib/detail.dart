import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pisjo/models/pisjo_data.dart';

var rupiah = NumberFormat('#,##0.00', 'ID');

Future<void> Detail(BuildContext context, PisjoData data) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(const Radius.circular(8)),
                    ),
                  ), 
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                padding: const EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(data.gambar),
                  ), 
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Text(data.nama, style: TextStyle(fontSize: 30)),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Text('Rp '+rupiah.format(data.harga), style: TextStyle(fontSize: 15)),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Text(data.desc, style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      );
    },
  );
}