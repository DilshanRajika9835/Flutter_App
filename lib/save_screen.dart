import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class SaveCustomer extends StatelessWidget {
  final _keyForm = GlobalKey<FormState>();
  final id = TextEditingController();
  final name = TextEditingController();
  final address = TextEditingController();
  final salary = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Padding(
        padding: const EdgeInsets.all(20),
        // List View It is the most popular scrolling widget that allows us to arrange its child widgets one after another in scroll direction
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(child: Text('CUSTOMER SAVE FORM ')),
            ),
            TextFormField(
                controller: id,
                decoration: InputDecoration(hintText: 'Insert your id ex:C001'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'You have to insert a id ';
                  }
                },
                onSaved: (newValue) => {this.id: newValue}),
            TextFormField(
                controller: name,
                // obscureText: true,
                decoration:
                    InputDecoration(hintText: 'Insert your name ex:kamla'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'You have to insert a name';
                  }
                },
                onSaved: (newValue) => {this.name: newValue}),
            TextFormField(
                controller: address,
                decoration:
                    InputDecoration(hintText: 'Insert your address ex:galle'),
                validator: (value) {
                  //||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)
                  if (value == null || value.isEmpty) {
                    return 'You have to insert a address';
                  }
                },
                onSaved: (newValue) => {this.address: newValue}),
            TextFormField(
                controller: salary,
                decoration:
                    InputDecoration(hintText: 'Insert your salary ex:3400.00'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'You have to insert a salary';
                  }
                },
                onSaved: (newValue) => {this.salary: newValue}),
            TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.blueAccent),
              child: Text('SAVE'),
              onPressed: () {
                if (_keyForm.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(content: Text('Processing Data')),
                  // );
                  _saveForm();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  void _saveForm() async {
    try {
      var response = await http
          .post(Uri.parse("http://192.168.8.112:8000/api/customer"), body: {
        "id": this.id.text,
        "name": this.name.text,
        "address": this.address.text,
        "salary": this.salary.text,
      });
      if (response.statusCode == 200) {
        _successTost();
        textFiels();
      }
    } catch (e) {
      _errTost();
    }
  }

  void textFiels() {
    new Timer(const Duration(milliseconds: 2000), () {
      this.id.clear();
      this.name.clear();
      this.address.clear();
      this.salary.clear();
    });
  }
}

void _successTost() {
  Fluttertoast.showToast(
      msg: "Customer Save Successfully!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
}

void _errTost() {
  Fluttertoast.showToast(
      msg: "Customer Save Fail!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
