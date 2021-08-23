import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//stl shote key
class AllCustomer extends StatefulWidget {
  const AllCustomer({Key? key}) : super(key: key);

  @override
  _AllCustomerState createState() => _AllCustomerState();
}

List<Customer> productlist = [];
int x = 1;

class _AllCustomerState extends State<AllCustomer> {
  @override
  void initState() {
    super.initState();
    loadAllCustomer();
  }

  @override
  Widget build(BuildContext context) {
    return (ListView(scrollDirection: Axis.horizontal, children: <Widget>[
      DataTable(
        columns: [
          DataColumn(
              label: Text('NO',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
          DataColumn(
              label: Text('ID',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
          DataColumn(
              label: Text('Name',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
          DataColumn(
              label: Text('Address',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
          DataColumn(
              label: Text('Salary',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
        ],
        rows: productlist
            .map((e) => DataRow(cells: [
                  DataCell(Text((x++).toString())),
                  DataCell(Text(e.id.toString())),
                  DataCell(Text(e.name.toString())),
                  DataCell(Text(e.address.toString())),
                  DataCell(Text(checkDouble(e.salary))),
                ]))
            .toList(),
      ),
    ]));
  }
}

loadAllCustomer() async {
  x = 1;
  print("\n-----------------------------------");
  try {
    var response =
        await http.get(Uri.parse("http://192.168.8.112:8000/api/customer"));
    var list = json.decode(response.body).cast<Map<String, dynamic>>();
    productlist =
        await list.map<Customer>((json) => Customer.fromJson(json)).toList();
    if (response.statusCode == 200) {
      print("-----------------------------------");
      print(response.body);
      print(productlist);
    } else {}

    return productlist;
  } catch (e) {
    print(e);
  }
}

class Customer {
  factory Customer.fromJson(Map<dynamic, dynamic> json) {
    return Customer(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      salary: json['salary'],
    );
  }

  Customer({this.id, this.name, this.address, this.salary});
  String? id;
  String? name;
  String? address;
  dynamic salary;
}

String checkDouble(var value) {
  switch (value.runtimeType) {
    case double:
      {
        print(value);
        return value.toStringAsFixed(2).toString();
      }
    case int:
      {
        return value.toStringAsFixed(2).toString();
      }
    default:
      {
        return "0.00";
      }
  }
}
