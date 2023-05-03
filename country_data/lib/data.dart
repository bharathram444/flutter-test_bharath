class Countrys {
  String? common;
  String? official;
  String? png;

  Countrys({
    this.common,
    this.official,
    this.png,
  });

  Countrys.fromJson(Map<String, dynamic> json) {
    common = json['name']['common'];
    official = json['name']['official'];
    png = json['flags']['png'];
    // url =
    //     (json["web_pages"] as List<dynamic>).map((e) => e.toString()).toList();
    // domains =
    //     (json["domains"] as List<dynamic>).map((e) => e.toString()).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['common'] = this.common;
    data['official'] = this.official;
    data['flag'] = this.png;
    // data['web_pages'] = this.url;
    // data['domains'] = this.domains;
    return data;
  }
}
