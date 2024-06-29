
import 'package:json_annotation/json_annotation.dart';

part "job_listings_model.g.dart";
@JsonSerializable()
class JobListingsModel{
  @JsonKey(name: "_id")
 final String title;
  final String category;
  final String description;
  final String location;
  final String country;
  final String city;
  final String fixedSalary;
  final String salaryFrom;
  final String salaryTo;


  const JobListingsModel({
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

  factory JobListingsModel.fromJson(Map<String, dynamic> json) => _$JobListingsModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobListingsModelToJson(this);
  @override
  List<Object?> get props => [
   title,
   description,
   category,
   location,
   city,
   country,
   fixedSalary,
   salaryFrom,
   salaryTo
  ];
}