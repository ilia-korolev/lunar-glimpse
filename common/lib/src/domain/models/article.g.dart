// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, unnecessary_null_checks, lines_longer_than_80_chars

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      uri: Uri.parse(json['uri'] as String),
      date: DateTime.parse(json['date'] as String),
      source: NewsSource.fromJson(json['source'] as Map<String, dynamic>),
      thumbnail: json['thumbnail'] == null
          ? null
          : Uri.parse(json['thumbnail'] as String),
      author: json['author'] as String?,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'uri': instance.uri.toString(),
      'date': instance.date.toIso8601String(),
      'source': instance.source.toJson(),
      'thumbnail': instance.thumbnail?.toString(),
      'author': instance.author,
    };
