/// id : "1"
/// title : "القرآن الكريم وعلومه"
/// hadeeths_count : "182"
/// parent_id : null

class HadithCategory {
  HadithCategory({
      this.id, 
      this.title, 
      this.hadeethsCount, 
      this.parentId,});

  HadithCategory.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    hadeethsCount = json['hadeeths_count'];
    parentId = json['parent_id'];
  }
  String? id;
  String? title;
  String? hadeethsCount;
  dynamic parentId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['hadeeths_count'] = hadeethsCount;
    map['parent_id'] = parentId;
    return map;
  }

}