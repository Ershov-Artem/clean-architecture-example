class ApiPet {
  final String image;

  ApiPet.fromApi(Map<String, dynamic> json)
      : image = json['url'] ?? json['file'];
}
