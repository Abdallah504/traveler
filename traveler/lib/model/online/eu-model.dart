class EuropeModel {
  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String subregion;
  String region;
  int population;
  List<double> latlng;
  String demonym;
  double area;
  List<String> timezones;
  String nativeName;
  int numericCode;
  Flags flags;
  List<Currency> currencies;
  List<Language> languages;
  String flag;
  List<RegionalBloc> regionalBlocs;
  bool independent;
  List<String> borders;
  Map<String, dynamic> translations;

  EuropeModel({
    required this.name,
    required this.topLevelDomain,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.callingCodes,
    required this.capital,
    required this.altSpellings,
    required this.subregion,
    required this.region,
    required this.population,
    required this.latlng,
    required this.demonym,
    required this.area,
    required this.timezones,
    required this.nativeName,
    required this.numericCode,
    required this.flags,
    required this.currencies,
    required this.languages,
    required this.flag,
    required this.regionalBlocs,
    required this.independent,
    required this.borders,
    required this.translations,
  });

  factory EuropeModel.fromJson(Map<String, dynamic> json) {
    return EuropeModel(
      name: json['name']['common'] ?? '',
      topLevelDomain: List<String>.from(json['tld'] ?? []),
      alpha2Code: json['cca2'] ?? '',
      alpha3Code: json['cca3'] ?? '',
      callingCodes: List<String>.from(json['idd']?['suffixes'] ?? []),
      capital: json['capital']?.first ?? '',
      altSpellings: List<String>.from(json['altSpellings'] ?? []),
      subregion: json['subregion'] ?? '',
      region: json['region'] ?? '',
      population: json['population'] is String ? int.parse(json['population']) : json['population'],
      latlng: List<double>.from(
        (json['latlng'] ?? []).map(
              (e) => e is String ? double.tryParse(e) ?? 0.0 : (e as double),
        ),
      ),
      demonym: json['demonyms']?['eng']?['m'] ?? '',
      area: json['area']?.toDouble() ?? 0.0,
      timezones: List<String>.from(json['timezones'] ?? []),
      nativeName: json['name']?['nativeName']?['nno']?['common'] ?? '',
      numericCode: json['ccn3'] ?? 0,
      flags: Flags.fromJson(json['flags'] ?? {}),
      currencies: (json['currencies'] is List)
          ? List<Currency>.from(
        json['currencies'].map((x) => Currency.fromJson(x)),
      )
          : json['currencies'] != null
          ? [Currency.fromJson(json['currencies'])]
          : [],
      languages: json['languages'] != null
          ? List<Language>.from(
        json['languages'].map((x) => Language.fromJson(x)),
      )
          : [],
      flag: json['flag'] ?? '',
      regionalBlocs: json['regionalBlocs'] != null
          ? List<RegionalBloc>.from(
        json['regionalBlocs'].map((x) => RegionalBloc.fromJson(x)),
      )
          : [],
      independent: json['independent'] ?? false,
      borders: List<String>.from(json['borders'] ?? []),
      translations: Map<String, dynamic>.from(json['translations'] ?? {}),
    );
  }
}

class Flags {
  String svg;
  String png;

  Flags({
    required this.svg,
    required this.png,
  });

  factory Flags.fromJson(Map<String, dynamic> json) {
    return Flags(
      svg: json['svg'] ?? '',
      png: json['png'] ?? '',
    );
  }
}

class Currency {
  String code;
  String name;
  String symbol;

  Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      code: json['code'] ?? '',
      name: json['name'] ?? '',
      symbol: json['symbol'] ?? '',
    );
  }
}

class Language {
  String iso6391;
  String iso6392;
  String name;
  String nativeName;

  Language({
    required this.iso6391,
    required this.iso6392,
    required this.name,
    required this.nativeName,
  });

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      iso6391: json['iso639_1'] ?? '',
      iso6392: json['iso639_2'] ?? '',
      name: json['name'] ?? '',
      nativeName: json['nativeName'] ?? '',
    );
  }
}

class RegionalBloc {
  String acronym;
  String name;

  RegionalBloc({
    required this.acronym,
    required this.name,
  });

  factory RegionalBloc.fromJson(Map<String, dynamic> json) {
    return RegionalBloc(
      acronym: json['acronym'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
