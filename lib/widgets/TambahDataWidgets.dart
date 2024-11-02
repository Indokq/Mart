import 'package:flutter/material.dart';
import 'package:widget_text/widgets/AppBarWidgets2.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Tambahdatawidgets extends StatefulWidget {
  @override
  _TambahdatawidgetsState createState() => _TambahdatawidgetsState();
}

class _TambahdatawidgetsState extends State<Tambahdatawidgets> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarwidgets2(),
          Padding(
            padding: EdgeInsets.all(16),
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
                  ],
                ),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Nama Produk Field
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nama Produk',
                          hintText: 'Masukan Nama Produk',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
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

                      // Image Picker Field
                      GestureDetector(
                        onTap: _pickImage, // Trigger image picker
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _image != null ? 'Image Selected' : 'Choose file',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                              Icon(Icons.image, color: Colors.grey[600]),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Display selected image if available
                      if (_image != null)
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: FileImage(_image!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      SizedBox(height: 40),

                      // Submit Button
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
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
