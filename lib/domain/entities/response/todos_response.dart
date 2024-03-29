class TodosResponse {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodosResponse(int i, {this.userId, this.id, this.title, this.completed});

  TodosResponse.empty({
    this.userId = 0,
    this.id = 0,
    this.title = '',
    this.completed = false
  });

  TodosResponse.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['completed'] = completed;
    return data;
  }
}
