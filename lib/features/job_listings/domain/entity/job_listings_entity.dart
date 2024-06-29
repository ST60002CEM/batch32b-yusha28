import 'package:equatable/equatable.dart';

class JobListingsEntity extends Equatable {
  final String? jobid;
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
    this.jobid,
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
  List<Object?> get props => [
        jobid,
        title,
        category,
        description,
        location,
        country,
        city,
        fixedSalary,
        salaryFrom,
        salaryTo
      ];
}
