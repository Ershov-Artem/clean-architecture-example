class ApiDog {
  final String image;

  ApiDog.fromApi(Map<String, dynamic> json) : image = json['url'];
}
