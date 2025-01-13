import 'dart:convert';

class CountriesModel {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  Status? status;
  bool? unMember;
  Map<String, Currency>? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  Region? region;
  String? subregion;
  Languages? languages;
  Map<String, Translation>? translations;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Map<String, double>? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  StartOfWeek? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  CountriesModel({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  factory CountriesModel.fromRawJson(String str) => CountriesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CountriesModel.fromJson(Map<String, dynamic> json) => CountriesModel(
    name: json["name"] == null ? null : Name.fromJson(json["name"]),
    tld: json["tld"] == null ? [] : List<String>.from(json["tld"]!.map((x) => x)),
    cca2: json["cca2"],
    ccn3: json["ccn3"],
    cca3: json["cca3"],
    cioc: json["cioc"],
    independent: json["independent"],
    status: statusValues.map[json["status"]]!,
    unMember: json["unMember"],
    currencies: Map.from(json["currencies"]!).map((k, v) => MapEntry<String, Currency>(k, Currency.fromJson(v))),
    idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
    capital: json["capital"] == null ? [] : List<String>.from(json["capital"]!.map((x) => x)),
    altSpellings: json["altSpellings"] == null ? [] : List<String>.from(json["altSpellings"]!.map((x) => x)),
    region: regionValues.map[json["region"]]!,
    subregion: json["subregion"],
    languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
    translations: Map.from(json["translations"]!).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
    latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
    landlocked: json["landlocked"],
    borders: json["borders"] == null ? [] : List<String>.from(json["borders"]!.map((x) => x)),
    area: json["area"]?.toDouble(),
    demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
    flag: json["flag"],
    maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
    population: json["population"],
    gini: Map.from(json["gini"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
    fifa: json["fifa"],
    car: json["car"] == null ? null : Car.fromJson(json["car"]),
    timezones: json["timezones"] == null ? [] : List<String>.from(json["timezones"]!.map((x) => x)),
    continents: json["continents"] == null ? [] : List<String>.from(json["continents"]!.map((x) => x)),
    flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
    coatOfArms: json["coatOfArms"] == null ? null : CoatOfArms.fromJson(json["coatOfArms"]),
    startOfWeek: startOfWeekValues.map[json["startOfWeek"]]!,
    capitalInfo: json["capitalInfo"] == null ? null : CapitalInfo.fromJson(json["capitalInfo"]),
    postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name?.toJson(),
    "tld": tld == null ? [] : List<dynamic>.from(tld!.map((x) => x)),
    "cca2": cca2,
    "ccn3": ccn3,
    "cca3": cca3,
    "cioc": cioc,
    "independent": independent,
    "status": statusValues.reverse[status],
    "unMember": unMember,
    "currencies": Map.from(currencies!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "idd": idd?.toJson(),
    "capital": capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
    "altSpellings": altSpellings == null ? [] : List<dynamic>.from(altSpellings!.map((x) => x)),
    "region": regionValues.reverse[region],
    "subregion": subregion,
    "languages": languages?.toJson(),
    "translations": Map.from(translations!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
    "landlocked": landlocked,
    "borders": borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
    "area": area,
    "demonyms": demonyms?.toJson(),
    "flag": flag,
    "maps": maps?.toJson(),
    "population": population,
    "gini": Map.from(gini!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "fifa": fifa,
    "car": car?.toJson(),
    "timezones": timezones == null ? [] : List<dynamic>.from(timezones!.map((x) => x)),
    "continents": continents == null ? [] : List<dynamic>.from(continents!.map((x) => x)),
    "flags": flags?.toJson(),
    "coatOfArms": coatOfArms?.toJson(),
    "startOfWeek": startOfWeekValues.reverse[startOfWeek],
    "capitalInfo": capitalInfo?.toJson(),
    "postalCode": postalCode?.toJson(),
  };
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  factory CapitalInfo.fromRawJson(String str) => CapitalInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
    latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
  };
}

class Car {
  List<String>? signs;
  Side? side;

  Car({
    this.signs,
    this.side,
  });

  factory Car.fromRawJson(String str) => Car.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    signs: json["signs"] == null ? [] : List<String>.from(json["signs"]!.map((x) => x)),
    side: sideValues.map[json["side"]]!,
  );

  Map<String, dynamic> toJson() => {
    "signs": signs == null ? [] : List<dynamic>.from(signs!.map((x) => x)),
    "side": sideValues.reverse[side],
  };
}

enum Side {
  LEFT,
  RIGHT
}

final sideValues = EnumValues({
  "left": Side.LEFT,
  "right": Side.RIGHT
});

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  factory CoatOfArms.fromRawJson(String str) => CoatOfArms.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
    png: json["png"],
    svg: json["svg"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
  };
}

class Currency {
  String? name;
  String? symbol;

  Currency({
    this.name,
    this.symbol,
  });

  factory Currency.fromRawJson(String str) => Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    name: json["name"],
    symbol: json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "symbol": symbol,
  };
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({
    this.eng,
    this.fra,
  });

  factory Demonyms.fromRawJson(String str) => Demonyms.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
    fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng?.toJson(),
    "fra": fra?.toJson(),
  };
}

class Eng {
  String? f;
  String? m;

  Eng({
    this.f,
    this.m,
  });

  factory Eng.fromRawJson(String str) => Eng.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
    f: json["f"],
    m: json["m"],
  );

  Map<String, dynamic> toJson() => {
    "f": f,
    "m": m,
  };
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({
    this.png,
    this.svg,
    this.alt,
  });

  factory Flags.fromRawJson(String str) => Flags.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
    png: json["png"],
    svg: json["svg"],
    alt: json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
    "alt": alt,
  };
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  factory Idd.fromRawJson(String str) => Idd.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
    root: json["root"],
    suffixes: json["suffixes"] == null ? [] : List<String>.from(json["suffixes"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "root": root,
    "suffixes": suffixes == null ? [] : List<dynamic>.from(suffixes!.map((x) => x)),
  };
}

class Languages {
  String? nno;
  String? nob;
  String? smi;
  String? ell;
  String? swe;
  String? eng;
  String? sot;
  String? fra;
  String? sag;
  String? ara;
  String? ber;
  String? kor;
  String? zho;
  String? nep;
  String? spa;
  String? nld;
  String? pap;
  String? grn;

  Languages({
    this.nno,
    this.nob,
    this.smi,
    this.ell,
    this.swe,
    this.eng,
    this.sot,
    this.fra,
    this.sag,
    this.ara,
    this.ber,
    this.kor,
    this.zho,
    this.nep,
    this.spa,
    this.nld,
    this.pap,
    this.grn,
  });

  factory Languages.fromRawJson(String str) => Languages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
    nno: json["nno"],
    nob: json["nob"],
    smi: json["smi"],
    ell: json["ell"],
    swe: json["swe"],
    eng: json["eng"],
    sot: json["sot"],
    fra: json["fra"],
    sag: json["sag"],
    ara: json["ara"],
    ber: json["ber"],
    kor: json["kor"],
    zho: json["zho"],
    nep: json["nep"],
    spa: json["spa"],
    nld: json["nld"],
    pap: json["pap"],
    grn: json["grn"],
  );

  Map<String, dynamic> toJson() => {
    "nno": nno,
    "nob": nob,
    "smi": smi,
    "ell": ell,
    "swe": swe,
    "eng": eng,
    "sot": sot,
    "fra": fra,
    "sag": sag,
    "ara": ara,
    "ber": ber,
    "kor": kor,
    "zho": zho,
    "nep": nep,
    "spa": spa,
    "nld": nld,
    "pap": pap,
    "grn": grn,
  };
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  factory Maps.fromRawJson(String str) => Maps.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"],
    openStreetMaps: json["openStreetMaps"],
  );

  Map<String, dynamic> toJson() => {
    "googleMaps": googleMaps,
    "openStreetMaps": openStreetMaps,
  };
}

class Name {
  String? common;
  String? official;
  Map<String, Translation>? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  factory Name.fromRawJson(String str) => Name.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: Map.from(json["nativeName"]!).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "common": common,
    "official": official,
    "nativeName": Map.from(nativeName!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class Translation {
  String? official;
  String? common;

  Translation({
    this.official,
    this.common,
  });

  factory Translation.fromRawJson(String str) => Translation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    official: json["official"],
    common: json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official,
    "common": common,
  };
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({
    this.format,
    this.regex,
  });

  factory PostalCode.fromRawJson(String str) => PostalCode.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
    format: json["format"],
    regex: json["regex"],
  );

  Map<String, dynamic> toJson() => {
    "format": format,
    "regex": regex,
  };
}

enum Region {
  AFRICA,
  AMERICAS,
  ASIA,
  EUROPE
}

final regionValues = EnumValues({
  "Africa": Region.AFRICA,
  "Americas": Region.AMERICAS,
  "Asia": Region.ASIA,
  "Europe": Region.EUROPE
});

enum StartOfWeek {
  MONDAY,
  SUNDAY
}

final startOfWeekValues = EnumValues({
  "monday": StartOfWeek.MONDAY,
  "sunday": StartOfWeek.SUNDAY
});

enum Status {
  OFFICIALLY_ASSIGNED
}

final statusValues = EnumValues({
  "officially-assigned": Status.OFFICIALLY_ASSIGNED
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
