import 'package:flutter/material.dart';
import '../models/image_models.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  Widget buildImage(ImageModel image1) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(image1.url),
            padding: EdgeInsets.only(
              bottom: 8.0
            ),
          ),
          Text("HENLO"),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }


}