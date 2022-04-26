import 'package:flutter/material.dart';
import 'package:inventory/main.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Tutorials', home: Main());
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: new Icon(Icons.arrow_back), title: Text('Transaction'), centerTitle: true),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (content, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: new Column(
                  children: <Widget>[
                    Text('Product Information', textAlign: TextAlign.end, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    new Padding(padding: new EdgeInsets.only(top: 30.0)),
                    Text(
                      'Gambar Produk',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0, bottom: 20),
                      height: 100,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                    new TextField(
                      decoration: new InputDecoration(
                        hintText: "Nama Produk",
                        labelText: "Nama Produk",
                        border: new OutlineInputBorder(borderRadius: new BorderRadius.circular(20.0)),
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.only(top: 20.0)),
                    new TextField(
                      decoration: new InputDecoration(
                        hintText: "ID Produk",
                        labelText: "ID Produk",
                        border: new OutlineInputBorder(borderRadius: new BorderRadius.circular(20.0)),
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.only(top: 20.0)),
                    new TextField(
                      decoration: new InputDecoration(
                        hintText: "Harga",
                        labelText: "Harga",
                        border: new OutlineInputBorder(borderRadius: new BorderRadius.circular(20.0)),
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.only(top: 20.0)),
                    new TextField(
                      decoration: new InputDecoration(
                        hintText: "Persediaan",
                        labelText: "Persediaan",
                        border: new OutlineInputBorder(borderRadius: new BorderRadius.circular(20.0)),
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.only(top: 20.0)),
                    new TextField(
                      maxLines: 3,
                      decoration: new InputDecoration(
                        hintText: "Deskripsi",
                        labelText: "Deskripsi",
                        border: new OutlineInputBorder(borderRadius: new BorderRadius.circular(20.0)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        backgroundColor: Color.fromARGB(81, 4, 0, 15),
                        label: Text(
                          'Tambah Produk',
                          style: (TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
