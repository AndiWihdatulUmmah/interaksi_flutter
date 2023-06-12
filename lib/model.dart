class ModelData{
  int? userId;
  int?  id;
  String? title;
  bool? completed;

  ModelData({
    this.userId, 
    this.id, 
    this.title, 
    this.completed,
    });

  ModelData.fromJson(Map<String,dynamic> json)
  {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }
}