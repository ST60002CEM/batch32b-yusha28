// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_listings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobListingsModel _$JobListingsModelFromJson(Map<String, dynamic> json) =>
    JobListingsModel(
      jobid: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      country: json['country'] as String,
      city: json['city'] as String,
      location: json['location'] as String,
      fixedSalary: json['fixedSalary'] as String,
      salaryFrom: json['salaryFrom'] as String,
      salaryTo: json['salaryTo'] as String,
    );

Map<String, dynamic> _$JobListingsModelToJson(JobListingsModel instance) =>
    <String, dynamic>{
      '_id': instance.title,
      'category': instance.category,
      'description': instance.description,
      'location': instance.location,
      'country': instance.country,
      'city': instance.city,
      'fixedSalary': instance.fixedSalary,
      'salaryFrom': instance.salaryFrom,
      'salaryTo': instance.salaryTo,
    };
