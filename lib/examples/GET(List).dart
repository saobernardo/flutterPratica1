import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

Future<List<Post>> pegarPosts() async {
  final response =
      await http.get(Uri.parse('http://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    return parsePosts(response.body);
  } else {
    throw Exception('Faiô na requisição de post');
  }
}

List<Post> parsePosts(String responseBody) {
  var parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Post>((json) => Post.fromJson(json)).toList();
}

class PostsList extends StatelessWidget {
  final List<Post>? posts;

  PostsList({this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts!.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.cake),
            title: Text(posts![index].title),
            subtitle: Text(posts![index].body),
          );
        });
  }
}

class TestePage extends StatefulWidget {
  @override
  _TestePage createState() => _TestePage();
}

class _TestePage extends State<TestePage> {
  late Future<List<Post>> postagens;

  @override
  void initState() {
    super.initState();

    postagens = pegarPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Página de teste'),
        ),
        body: Center(
          child: FutureBuilder<List<Post>>(
            future: postagens,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return PostsList(posts: snapshot.data);
              }
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}
