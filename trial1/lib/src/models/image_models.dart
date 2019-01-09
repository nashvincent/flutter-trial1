class ImageModel {
  String status;
  String url;

  ImageModel(this.status, this.url);

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    status = parsedJson['status'];
    url = parsedJson['message'];
  }
}

//https://api.thecatapi.com/v1/images/search