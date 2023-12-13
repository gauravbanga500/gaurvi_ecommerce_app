class ImagesModel {

  String? name;
  String? src;
  int? id;


  ImagesModel({this.name, this.src, this.id});



  factory ImagesModel.fromJson(Map<String,dynamic> json){
    return ImagesModel(
      name: json['name'],
      src: json['src'],
      id: json['id'],
    );
  }

}