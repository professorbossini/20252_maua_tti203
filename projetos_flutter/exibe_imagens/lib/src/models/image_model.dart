class ImageModel{
  late String url;
  late String alt;

  // ImageModel(String url, String alt){
  //   this.url = url;
  //   this.alt = alt;
  // }
  ImageModel(this.url, this.alt);

  // ImageModel(Map m){
  // }
  ImageModel.fromJSON(Map <String, dynamic> decodedJSON){
    url = decodedJSON['photos'][0]['src']['medium'];
    alt = decodedJSON['photos'][0]['alt'];  
  }
}