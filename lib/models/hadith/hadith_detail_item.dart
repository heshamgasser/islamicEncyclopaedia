/// id : "5907"
/// title : "تعاهدوا هذا القرآن، فوالذي نفس محمد بيده لهو أشد تفلتا مِنَ الإبلِ فِي عُقُلِهَا"
/// hadeeth : "عن أبي موسى الأشعري رضي الله عنه عن النبي صلى الله عليه وسلم قال: «تعاهدوا هَذَا القُرْآنَ، فَوَالَّذِي نَفْسُ مُحَمَّدٍ بِيَدِهِ لَهُوَ أشَدُّ تَفَلُّتاً مِنَ الإبلِ فِي عُقُلِهَا». ."
/// attribution : "متفق عليه"
/// grade : "صحيح"
/// explanation : "\"تعاهدوا القرآن\" أي: حافظوا على قراءته وواظبوا على تلاوته، وقوله: \"فوالذي نفس محمد بيده لهو أشدّ تفلتاً\" أي تخلصاً، \"من الإبل في عقلها\" جمع عقال، وهو حبل يشد به البعير في وسط الذراع، شبه القرآن في كونه محفوظاً عن ظهر القلب بالإبل النافرة وقد عقل عليها بالحبل، واللّه تعالى بلطفه منحهم هذه النعمة العظيمة فينبغي له أن يتعاهده بالحفظ والمواظبة عليه، فيجعل له حزباً معيناً يتعاهده كل يوم، حتى لا ينساه، وأما من نسيه بمقتضى الطبيعة فإنه لا يضر، لكن من أهمل وتغافل عنه بعد أن أنعم الله عليه بحفظه فإنه يخشى عليه من العقوبة، فينبغي الحرص على القرآن بتعاهده بالقراءة وتلاوته ليبقى في الصدر، وكذلك أيضا بالعمل به؛ لأن العمل بالشيء يؤدي إلى حفظه وبقائه."
/// hints : ["الحث على المواظبة على قراءة القرآن ومذاكرته.","أن حافظ القرآن إن واظب على تلاوته مرة بعد مرة بقي محفوظاً في قلبه، و إلا ذهب عنه ونسيه؛ لأنه أشد ذهاباً من الإبل."]
/// categories : ["39","739","1004"]
/// translations : ["ar","bn","bs","en","es","fa","fr","id","ru","tl","tr","ur","zh","hi","ug","ku","ha","pt","ml","te","sw","my","th","de","ja","ps","vi","as","sq"]
/// words_meanings : [{"word":"تعاهدوا ","meaning":" حافظوا على قراءته."},{"word":"تفلتاً ","meaning":" التفلت: التخلص من الشيء فجأة من غير تمكّث."},{"word":"عُقُلها ","meaning":" جمع عِقَالٍ، وهو حبل يشد به البعير في وسط الذراع."}]
/// reference : "بهجة الناظرين شرح رياض الصالحين، تأليف سليم الهلالي، دار ابن الجوزي.\nدليل الفالحين لطرق رياض الصالحين، لمحمد بن علان الشافعي، دار الكتاب العربي، بيروت.\nرياض الصالحين من كلام سيد المرسلين، للإمام أبي زكريا النووي، تحقيق د. ماهر الفحل، دار ابن كثير-دمشق، الطبعة الأولى، 1428هـ.\nشرح رياض الصالحين، للشيخ محمد بن صالح العثيمين، مدار الوطن، الرياض، 1426هـ.\nصحيح البخاري، للإمام أبي عبدالله محمد بن إسماعيل البخاري، عناية محمد زهير الناصر، دار طوق النجاة، الطبعة الأولى، 1422هـ.\nصحيح مسلم، للإمام مسلم بن الحجاج، حققه ورقمه محمد فؤاد عبدالباقي، دار عالم الكتب، الرياض، الطبعة الأولى، 1417هـ.\nكنوز رياض الصالحين، فريق علمي برئاسة أ.د. حمد العمار، دار كنوز إشبيليا، الرياض، الطبعة الأولى، 1430هـ.\nنزهة المتقين شرح رياض الصالحين، تأليف د. مصطفى الخِن وغيره، مؤسسة الرسالة، بيروت، الطبعة الرابعة عشر، 1407هـ."

class HadithDetailItems {
  HadithDetailItems({
      this.id, 
      this.title, 
      this.hadeeth, 
      this.attribution, 
      this.grade, 
      this.explanation, 
      this.hints, 
      this.categories, 
      this.translations, 
      this.wordsMeanings, 
      this.reference,});

  HadithDetailItems.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    hadeeth = json['hadeeth'];
    attribution = json['attribution'];
    grade = json['grade'];
    explanation = json['explanation'];
    hints = json['hints'] != null ? json['hints'].cast<String>() : [];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    translations = json['translations'] != null ? json['translations'].cast<String>() : [];
    if (json['words_meanings'] != null) {
      wordsMeanings = [];
      json['words_meanings'].forEach((v) {
        wordsMeanings?.add(WordsMeanings.fromJson(v));
      });
    }
    reference = json['reference'];
  }
  String? id;
  String? title;
  String? hadeeth;
  String? attribution;
  String? grade;
  String? explanation;
  List<String>? hints;
  List<String>? categories;
  List<String>? translations;
  List<WordsMeanings>? wordsMeanings;
  String? reference;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['hadeeth'] = hadeeth;
    map['attribution'] = attribution;
    map['grade'] = grade;
    map['explanation'] = explanation;
    map['hints'] = hints;
    map['categories'] = categories;
    map['translations'] = translations;
    if (wordsMeanings != null) {
      map['words_meanings'] = wordsMeanings?.map((v) => v.toJson()).toList();
    }
    map['reference'] = reference;
    return map;
  }

}

/// word : "تعاهدوا "
/// meaning : " حافظوا على قراءته."

class WordsMeanings {
  WordsMeanings({
      this.word, 
      this.meaning,});

  WordsMeanings.fromJson(dynamic json) {
    word = json['word'];
    meaning = json['meaning'];
  }
  String? word;
  String? meaning;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['word'] = word;
    map['meaning'] = meaning;
    return map;
  }

}