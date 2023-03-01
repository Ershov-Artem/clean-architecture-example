class ApiCat {
  final String image;

  ApiCat.fromApi(Map<String, dynamic> json) : image = json['file'];
}
