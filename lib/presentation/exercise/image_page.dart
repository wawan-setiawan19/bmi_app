import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 300,
        width: double.infinity,
        color: Colors.blue,
        // child: Image.asset(
        //   'assets/images/leaf.jpg',
        //   fit: BoxFit.cover,
        // ),
        child: Image.network(
            "https://images.unsplash.com/photo-1470104240373-bc1812eddc9f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            fit: BoxFit.cover, loadingBuilder: (context, child, imageChunk) {
          if (imageChunk == null) {
            return child;
          } else {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            );
          }
        }),
      ),
    );
  }
}
