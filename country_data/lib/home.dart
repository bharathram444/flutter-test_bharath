import 'dart:convert';

import 'package:country_data/data.dart';
import 'package:flutter/material.dart';

//import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Countrys> Countries = <Countrys>[];
  void getRequest() async {
    var url = Uri.parse("https://restcountries.com/v3.1/all");

    var response = await http.get(url);
    // print(response.body.toString());
    var body = jsonDecode(response.body);
    print(body);
    final b1 = body as List<dynamic>;
    var data = b1.map((e) => Countrys.fromJson(e)).toList();
    Countries.addAll(data);
    setState(() {});
    print(Countries.length);
  }

  @override
  void initState() {
    super.initState();
    getRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries Data'),
      ),
      body: ListView.builder(
        itemCount: Countries.length,
        itemBuilder: (context, index) {
          final country = Countries[index];
          // var img = Uri.parse(country.png );
          return ListTile(
            leading: CircleAvatar(
              child: Image.network(
                country.png.toString(),
                cacheHeight: 15,
                cacheWidth: 28,
              )
              //Text(country. ?? '*')
              ,
            ),
            title: Text(country.common ?? 'Un'),
            subtitle: Text(country.official ?? 'Un'),
          );
        },
      ),
    );
  }
}
