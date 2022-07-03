import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiData extends StatelessWidget {
  const ApiData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: FutureBuilder<List<Map<String, dynamic>>>(
            future: fetchdata(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final post = snapshot.data![index];
                    return SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          SizedBox(
                            child: Image.network(post["url"].toString()),
                          ),
                          Positioned(child: Text(post['id'].toString()))
                        ],
                      ),
                    );
                    // ListTile(
                    //   title: Text(post["id"].toString()),
                    // );
                  },
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }

  //fetch data from API
  Future<List<Map<String, dynamic>>> fetchdata() async {
    // final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    //http.Response response = await http.get(uri);
    const String apiEndpoint = "https://jsonplaceholder.typicode.com/photos";
    http.Response response = await http.get(Uri.parse(apiEndpoint));

    var decodedJson = json.decode(response.body);

    List<Map<String, dynamic>> listOfPosts =
        decodedJson.cast<Map<String, dynamic>>();
    print(listOfPosts[0]["title"]);
    return listOfPosts;
  }
}
