import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pisjo/models/pisjo_data.dart';
import 'package:pisjo/detail.dart';
import 'package:pisjo/pesanan.dart';

var rupiah = NumberFormat('#,##0.00', 'ID');

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Pesanan()),
      ],
      child: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            // if (constraints.maxWidth <= 800) {
              return MobileMenuPage();
            // } else {
            //   return WebMenuPage();
            // }
          },
        ),
      ),
    );
  }
}

class MobileMenuPage extends StatelessWidget {
  const MobileMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset("images/logo.png"),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Nyemil Dulu!",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Flexible(
                flex: 1,
                child: Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(5.0),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart, size: 30),
                    onPressed: (){
                      context.read<Pesanan>().tambah_pesanan(1);
                    },
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Pisang Ijo Mameen", style: TextStyle(fontSize: 25)),
          ),

          Container(
            width: double.infinity,
            //height: 600,
            padding: const EdgeInsets.all(10.0),
            child: 
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: pisjoDataList.length,
              itemBuilder: (context, index) {
                final PisjoData data = pisjoDataList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      width: double.infinity,
                      height: 0.2,
                      margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
                      color: Colors.grey,
                    ),

                    InkWell(
                      onTap: (){
                        Detail(context, data);
                      },
                      child: Row(
                        children: <Widget> [
                          Flexible(
                            child: Container(
                              width: 100,
                              height: 100,
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(data.gambar),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(5.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget> [
                                    Text(data.nama, style: TextStyle(fontSize: 20)),
                                    Text('Rp '+ rupiah.format(data.harga)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    if(context.watch<Pesanan>().pesanan[index] == 0)
                      ElevatedButton(
                        onPressed: () {
                          context.read<Pesanan>().tambah_pesanan(index);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20),
                             side: BorderSide(color: Colors.black)
                            ),
                          ),
                        ),
                        child: Text(
                          'Tambah',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    if(context.watch<Pesanan>().pesanan[index] > 0)
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: IconButton(
                              icon: Icon(Icons.remove),
                              onPressed:() => context.read<Pesanan>().kurangin_pesanan(index),
                            ),
                          ),
                          Flexible(
                            child: Text("${context.watch<Pesanan>().pesanan[index]}", style: TextStyle(fontSize: 18)),
                          ),
                          Flexible(
                            child: IconButton(
                              icon: Icon(Icons.add),
                              onPressed:() => context.read<Pesanan>().tambah_pesanan(index),
                            ),
                          ),
                        ],
                      ),

                  ],
                );
              },
            ), 
          ),
          

        ],
      ),
    );
  }
}