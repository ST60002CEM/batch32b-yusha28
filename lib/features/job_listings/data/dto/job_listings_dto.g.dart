// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_listings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobListingsDto _$JobListingsDtoFromJson(Map<String, dynamic> json) =>
    JobListingsDto(
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

Map<String, dynamic> _$JobListingsDtoToJson(JobListingsDto instance) =>
    <String, dynamic>{
      '_id': instance.title,
      'description': instance.description,
      'category': instance.category,
      'country': instance.country,
      'city': instance.city,
      'location': instance.location,
      'fixedSalary': instance.fixedSalary,
      'salaryFrom': instance.salaryFrom,
      'salaryTo': instance.salaryTo,
    };
