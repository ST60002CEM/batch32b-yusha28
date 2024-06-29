

import 'package:json_annotation/json_annotation.dart';
import 'package:workwise/features/job_listings/domain/entity/job_listings_entity.dart';

part 'job_listings_dto.g.dart';

@JsonSerializable()
class JobListingsDto{
  @JsonKey(name: "_id")
  final String title;
  final String description;
  final String category;
  final String country;
  final String city;
  final String location;
  final String fixedSalary;
  final String salaryFrom;
  final String salaryTo;

  JobListingsDto({
    required this.title,
    required this.description,
    required this.category,
    required this.country,
    required this.city,
    required this.location,
    required this.fixedSalary,
    required this.salaryFrom,
    required this.salaryTo
});
  JobListingsEntity toEntity(){
    return JobListingsEntity(
        title: title,
        description: description,
        category: category,
        city: city,
        country: country,
        location: location,
        fixedSalary: fixedSalary,
        salaryFrom: salaryFrom,
        salaryTo: salaryTo
    );
  }

  factory JobListingsDto.fromJson(Map<String, dynamic> json) =>
      _$JobListingsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$JobListingsDtoToJson(this);
}