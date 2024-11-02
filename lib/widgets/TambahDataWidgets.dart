import 'package:flutter/material.dart';
import 'package:widget_text/widgets/AppBarWidgets2.dart';

class Tambahdatawidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarwidgets2(),

          Padding(padding: EdgeInsets.all(16),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10, 
                    spreadRadius: 2,
                    offset: Offset(0, 4), 
                  ),
                ]
              ),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Nama Produk
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nama Produk',
                        hintText: 'Masukan Nama Produk',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                    ),
                    SizedBox(height: 25),

                    // Harga Field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Harga',
                      hintText: 'Masukan Harga',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),

                  // Kategori Produk Dropdown
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Kategori produk',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    value: 'Makanan',
                    items: [
                      DropdownMenuItem(
                        value: 'Makanan',
                        child: Text('Makanan'),
                      ),
                      DropdownMenuItem(
                        value: 'Minuman',
                        child: Text('Minuman'),
                      ),
                    ],
                    onChanged: (value) {
                      // Handle dropdown change
                    },
                  ),
                  SizedBox(height: 25),

                  // Image Picker Field (placeholder)
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Image',
                      hintText: 'Choose file',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onTap: () {
                      // Trigger image picker
                    },
                    readOnly: true,
                  ),
                  SizedBox(height: 40),

                //Button
                   ElevatedButton(
                    onPressed: () {
                      // Handle form submission
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 130,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text('Submit', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                        ),
                      ),
                  ),
                    
                  ],
                ),

                  
            ),
          ),
          ),
          )
        ],
      ),
    );
  }
}