/// data : [{"id":"5907","title":"تعاهدوا هذا القرآن، فوالذي نفس محمد بيده لهو أشد تفلتا مِنَ الإبلِ فِي عُقُلِهَا","translations":["ar","bn","bs","en","es","fa","fr","id","ru","tl","tr","ur","zh","hi","ug","ku","ha","pt","ml","te","sw","my","th","de","ja","ps","vi","as","sq"]},{"id":"5913","title":"خيركم من تعلم القرآن وعلمه","translations":["ar","bn","bs","en","es","fa","fr","id","ru","tl","tr","ur","zh","hi","ug","ku","ha","pt","ml","te","sw","my","th","de","ja","ps","vi","as","sq"]},{"id":"6208","title":"لا تجعلوا بيوتكم مقابر، إن الشيطان ينفر من البيت","translations":["ar","bs","en","fa","fr","id","ru","tr","ur","zh","hi","bn","es","ku","pt","ml","te","sw","ta","si","my","th","de","ja","ps","vi","as","sq"]},{"id":"6274","title":"من قرأ بالآيتين من آخر سورة البقرة في ليلة كفتاه","translations":["ar","bs","en","fa","fr","id","ru","tr","ur","zh","hi","bn","ug","es","ku","ha","pt","ml","te","sw","ta","my","th","de","ja","ps","vi","as","sq"]},{"id":"6275","title":"من قرأ حرفاً من كتاب الله فله حسنة والحسنة بعشر أمثالها","translations":["ar","bs","en","fa","fr","id","ru","tr","ur","zh","hi","bn","es","ku","pt","ml","te","sw","ta","si","my","th","de","ja","ps","vi","as","sq"]},{"id":"8402","title":"كان النبي صلى الله عليه وسلم يذكر الله على كل أحيانه","translations":["ar","bn","bs","en","es","fa","fr","id","ru","tl","tr","ur","zh","hi","vi","ug","ku","ha","pt","ml","te","my","th","de","ja","ps","as","sq"]},{"id":"65099","title":"قسمت الصلاة بيني وبين عبدي نصفين ولعبدي ما سأل","translations":["ar","en","my"]},{"id":"3410","title":"لما حضرَتْ أبا طالب الوفاة جاءه رسول الله صلى الله عليه وسلم وعنده عبد الله بن أبي أمية وأبو جهل، فقال له: يا عم قل لا إله إلا الله، كلمة أحاج لك بها عند الله","translations":["ar","bn","bs","en","es","fa","fr","id","tr","ur","zh","hi","tl","ug","ha","ku","sw","pt","si","ru"]},{"id":"6258","title":"مثل المؤمن الذي يقرأ القرآن مثل الأترجة ريحها طيب وطعمها طيب","translations":["ar","bs","en","fa","fr","id","ru","tr","ur","zh","hi","es","ku","pt","si"]},{"id":"6265","title":"من حفظ عشر آيات من أول سورة الكهف، عصم من الدجال","translations":["ar","bs","en","fa","fr","id","ru","tr","ur","zh","hi","ug","es","ku","pt","si"]},{"id":"6276","title":"من لم يتغن بالقرآن فليس منا","translations":["ar","bs","en","fa","fr","id","ru","tr","ur","zh","hi","es","ku","pt","si"]},{"id":"10112","title":"ألا أعلمك أعظم سورة في القرآن","translations":["ar","bn","bs","en","es","fa","fr","id","ru","tl","tr","ur","zh","hi","si","ku","pt"]},{"id":"10113","title":"الذي يقرَأُ القرآنَ وهو مَاهِرٌ به مع السَّفَرَةِ الكِرَامِ البَرَرَةِ، والذي يقرَأُ القرآنَ ويَتَتَعْتَعُ فيه وهو عليه شَاقٌ لَهُ أجْرَانِ","translations":["ar","bn","bs","en","es","fa","id","tl","tr","ur","zh","hi","fr","si","ha","ku","pt","ru"]},{"id":"10114","title":"ألم تر آيات أنزلت هذه الليلة لَمْ يُرَ مِثْلُهُنَّ قَطُّ؟ قل أعوذ برب الفلق، وقل أعوذ برب الناس","translations":["ar","bn","bs","en","es","fa","fr","id","ru","tl","tr","ur","zh","hi","vi","si","ha","ku","pt"]},{"id":"10842","title":"إن كان لينزل على رسول الله صلى الله عليه وسلم في الغداة الباردة، ثم تفيض جبهته عرقًا","translations":["ar","bs","en","fa","fr","id","ru","tr","ur","zh","hi","es","ha","ku","pt"]},{"id":"10847","title":"زينوا القرآن بأصواتكم","translations":["ar","bs","en","fa","fr","id","ru","tr","ur","zh","hi","es","ha","ku","pt"]},{"id":"10853","title":"بهذا أمرتم؟ أو بهذا بعثتم؟ أن تضربوا كتاب الله بعضه ببعض؟ إنما ضلت الأمم قبلكم في مثل هذا، إنكم لستم مما هاهنا في شيء، انظروا الذي أمرتم به، فاعملوا به، والذي نهيتم عنه، فانتهوا","translations":["ar","bs","en","fa","fr","ru","ur","zh","hi","ug","id","es","ha","ku","pt"]},{"id":"10854","title":"لا تجادلوا في القرآن فإن جدالًا فيه كفر","translations":["ar","bs","en","fa","fr","id","ru","ur","zh","hi","es","ha","ku","pt"]},{"id":"64642","title":"ألا إن القوة الرمي، ألا إن القوة الرمي، ألا إن القوة الرمي","translations":["ar","bs","en","fa","fr","ru","hi","zh","id","ur","ku","pt"]},{"id":"65026","title":"لا تقوم الساعة حتى تطلع الشمس من مغربها","translations":["ar","en","my"]}]
/// meta : {"current_page":1,"last_page":10,"total_items":182,"per_page":20}

class HadithList {
  HadithList({
      this.data, 
      this.meta,});

  HadithList.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  List<Data>? data;
  Meta? meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    return map;
  }

}

/// current_page : 1
/// last_page : 10
/// total_items : 182
/// per_page : 20

class Meta {
  Meta({
      this.currentPage, 
      this.lastPage, 
      this.totalItems, 
      this.perPage,});

  Meta.fromJson(dynamic json) {
    currentPage = json['current_page'];
    lastPage = json['last_page'];
    totalItems = json['total_items'];
    perPage = json['per_page'];
  }
  num? currentPage;
  num? lastPage;
  num? totalItems;
  num? perPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = currentPage;
    map['last_page'] = lastPage;
    map['total_items'] = totalItems;
    map['per_page'] = perPage;
    return map;
  }

}

/// id : "5907"
/// title : "تعاهدوا هذا القرآن، فوالذي نفس محمد بيده لهو أشد تفلتا مِنَ الإبلِ فِي عُقُلِهَا"
/// translations : ["ar","bn","bs","en","es","fa","fr","id","ru","tl","tr","ur","zh","hi","ug","ku","ha","pt","ml","te","sw","my","th","de","ja","ps","vi","as","sq"]

class Data {
  Data({
      this.id, 
      this.title, 
      this.translations,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    translations = json['translations'] != null ? json['translations'].cast<String>() : [];
  }
  String? id;
  String? title;
  List<String>? translations;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['translations'] = translations;
    return map;
  }

}