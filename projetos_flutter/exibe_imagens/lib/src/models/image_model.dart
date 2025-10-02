class ImageModel{
  late String url;
  late String alt;
  /*
  public ImageModel(String url, String alt){
    this.url = url;
    this.alt = alt;
  }
   */
  ImageModel(this.url, this.alt);
  //construtor nomeado
  ImageModel.fromJSON(Map <String, dynamic> decodedJSON){
    url = decodedJSON['photos'][0]['src']['medium'];
    alt = decodedJSON['photos'][0]['alt'];
  }

  //sobreescrever o toString, exibindo url e alt
  @override
  String toString() {
    return 'url: $url \nalt: $alt';
  }
}