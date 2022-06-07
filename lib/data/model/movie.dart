// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class MovieResult {
  MovieResult({required this.movie});

  List<Movie> movie;

  factory MovieResult.fromJson(Map<dynamic, dynamic> json) => MovieResult(
        movie: List<Movie>.from(
            (json['movie'] as List).map((e) => Movie.fromJson(e))),
      );

  Map<String, dynamic> toJson() =>
      {"restaurants": List<dynamic>.from(movie.map((e) => e.toJson()))};
}

Movie movieFromJson(String str) => Movie.fromJson(json.decode(str));

String movieToJson(Movie data) => json.encode(data.toJson());

class Movie {
  Movie({
    required this.data,
    required this.totalItems,
    required this.totalPages,
    required this.currentPage,
  });

  List<Datum> data;
  int totalItems;
  int totalPages;
  int currentPage;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        totalItems: json["totalItems"],
        totalPages: json["totalPages"],
        currentPage: json["currentPage"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "totalItems": totalItems,
        "totalPages": totalPages,
        "currentPage": currentPage,
      };
}

class Datum {
  Datum({
    required this.poster,
    required this.rating,
    required this.quality,
    required this.categories,
    required this.downloadLink,
    required this.options,
  });

  String poster;
  String rating;
  Quality quality;
  String categories;
  String downloadLink;
  Options options;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        poster: json["poster"],
        rating: json["rating"],
        quality: qualityValues.map[json["quality"]],
        categories: json["categories"],
        downloadLink: json["downloadLink"],
        options: Options.fromJson(json["options"]),
      );

  Map<String, dynamic> toJson() => {
        "poster": poster,
        "rating": rating,
        "quality": qualityValues.reverse[quality],
        "categories": categories,
        "downloadLink": downloadLink,
        "options": options.toJson(),
      };
}

class Options {
  Options({
    required this.context,
    required this.id,
    required this.type,
    required this.name,
    required this.url,
    required this.image,
    required this.datePublished,
    required this.sameAs,
    required this.director,
    required this.genre,
    required this.dateCreated,
    required this.duration,
    required this.aggregateRating,
    required this.hasPart,
  });

  String context;
  String id;
  OptionsType type;
  String name;
  String url;
  String image;
  DateTime datePublished;
  String sameAs;
  List<Director> director;
  List<String> genre;
  DateTime dateCreated;
  String duration;
  AggregateRating aggregateRating;
  HasPart hasPart;

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        context: json["@context"],
        id: json["@id"],
        type: optionsTypeValues.map[json["@type"]],
        name: json["name"],
        url: json["url"],
        image: json["image"],
        datePublished: DateTime.parse(json["datePublished"]),
        sameAs: json["sameAs"],
        director: List<Director>.from(
            json["director"].map((x) => Director.fromJson(x))),
        genre: List<String>.from(json["genre"].map((x) => x)),
        dateCreated: DateTime.parse(json["dateCreated"]),
        duration: json["duration"],
        aggregateRating: AggregateRating.fromJson(json["aggregateRating"]),
        hasPart: HasPart.fromJson(json["hasPart"]),
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@id": id,
        "@type": optionsTypeValues.reverse[type],
        "name": name,
        "url": url,
        "image": image,
        "datePublished": datePublished.toIso8601String(),
        "sameAs": sameAs,
        "director": List<dynamic>.from(director.map((x) => x.toJson())),
        "genre": List<dynamic>.from(genre.map((x) => x)),
        "dateCreated":
            "${dateCreated.year.toString().padLeft(4, '0')}-${dateCreated.month.toString().padLeft(2, '0')}-${dateCreated.day.toString().padLeft(2, '0')}",
        "duration": duration,
        "aggregateRating": aggregateRating.toJson(),
        "hasPart": hasPart.toJson(),
      };
}

class AggregateRating {
  AggregateRating({
    required this.type,
    required this.ratingValue,
    required this.reviewCount,
    required this.bestRating,
    required this.worstRating,
  });

  AggregateRatingType type;
  String ratingValue;
  String reviewCount;
  String bestRating;
  String worstRating;

  factory AggregateRating.fromJson(Map<String, dynamic> json) =>
      AggregateRating(
        type: aggregateRatingTypeValues.map[json["@type"]],
        ratingValue: json["ratingValue"],
        reviewCount: json["reviewCount"],
        bestRating: json["bestRating"],
        worstRating: json["worstRating"],
      );

  Map<String, dynamic> toJson() => {
        "@type": aggregateRatingTypeValues.reverse[type],
        "ratingValue": ratingValue,
        "reviewCount": reviewCount,
        "bestRating": bestRating,
        "worstRating": worstRating,
      };
}

enum AggregateRatingType { AGGREGATE_RATING }

final aggregateRatingTypeValues =
    EnumValues({"AggregateRating": AggregateRatingType.AGGREGATE_RATING});

class Director {
  Director({
    required this.type,
    required this.name,
  });

  DirectorType type;
  String name;

  factory Director.fromJson(Map<String, dynamic> json) => Director(
        type: directorTypeValues.map[json["@type"]],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "@type": directorTypeValues.reverse[type],
        "name": name,
      };
}

enum DirectorType { PERSON }

final directorTypeValues = EnumValues({"Person": DirectorType.PERSON});

class HasPart {
  HasPart({
    required this.type,
    required this.description,
    required this.potentialAction,
  });

  HasPartType type;
  Description description;
  PotentialAction potentialAction;

  factory HasPart.fromJson(Map<String, dynamic> json) => HasPart(
        type: hasPartTypeValues.map[json["@type"]],
        description: descriptionValues.map[json["description"]],
        potentialAction: PotentialAction.fromJson(json["potentialAction"]),
      );

  Map<String, dynamic> toJson() => {
        "@type": hasPartTypeValues.reverse[type],
        "description": descriptionValues.reverse[description],
        "potentialAction": potentialAction.toJson(),
      };
}

enum Description { TRAILER }

final descriptionValues = EnumValues({"trailer": Description.TRAILER});

class PotentialAction {
  PotentialAction({
    required this.type,
    required this.target,
  });

  PotentialActionType type;
  List<Target> target;

  factory PotentialAction.fromJson(Map<String, dynamic> json) =>
      PotentialAction(
        type: potentialActionTypeValues.map[json["@type"]],
        target:
            List<Target>.from(json["target"].map((x) => Target.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@type": potentialActionTypeValues.reverse[type],
        "target": List<dynamic>.from(target.map((x) => x.toJson())),
      };
}

class Target {
  Target({
    required this.type,
    required this.urlTemplate,
    required this.inLanguage,
    required this.actionPlatform,
  });

  TargetType type;
  String urlTemplate;
  InLanguage inLanguage;
  List<String> actionPlatform;

  factory Target.fromJson(Map<String, dynamic> json) => Target(
        type: targetTypeValues.map[json["@type"]],
        urlTemplate: json["urlTemplate"],
        inLanguage: inLanguageValues.map[json["inLanguage"]],
        actionPlatform: List<String>.from(json["actionPlatform"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "@type": targetTypeValues.reverse[type],
        "urlTemplate": urlTemplate,
        "inLanguage": inLanguageValues.reverse[inLanguage],
        "actionPlatform": List<dynamic>.from(actionPlatform.map((x) => x)),
      };
}

enum InLanguage { EN }

final inLanguageValues = EnumValues({"en": InLanguage.EN});

enum TargetType { ENTRY_POINT }

final targetTypeValues = EnumValues({"EntryPoint": TargetType.ENTRY_POINT});

enum PotentialActionType { WATCH_ACTION }

final potentialActionTypeValues =
    EnumValues({"WatchAction": PotentialActionType.WATCH_ACTION});

enum HasPartType { CLIP }

final hasPartTypeValues = EnumValues({"Clip": HasPartType.CLIP});

enum OptionsType { MOVIE }

final optionsTypeValues = EnumValues({"Movie": OptionsType.MOVIE});

enum Quality { HD }

final qualityValues = EnumValues({"HD": Quality.HD});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
