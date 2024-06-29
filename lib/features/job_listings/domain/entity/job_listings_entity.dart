
import 'package:equatable/equatable.dart';

class JobListingsEntity extends Equatable {
  final String title;
  final String category;
  final String description;
  final String location;
  final String country;
  final String city;
  final String fixedSalary;
  final String salaryFrom;
  final String salaryTo;

  const JobListingsEntity({

    required this.title,
    required this.category,
    required this.description,
    required this.location,
    required this.country,
    required this.city,
    required this.fixedSalary,
    required this.salaryFrom,
    required this.salaryTo,

  });

  @override
  List<Object?> get props =>
      [title, category, description, location, country,city,fixedSalary,salaryFrom, salaryTo];
}