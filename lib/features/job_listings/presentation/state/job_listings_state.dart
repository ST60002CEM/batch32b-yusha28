

import 'package:workwise/features/job_listings/data/model/job_listings_model.dart';

class JobListingsState{
  final List<JobListingsModel> jobListings;
  final bool isLoading;
  final bool hasMaxReached;
  final int page;

  const JobListingsState({
    required this.jobListings,
    required this.isLoading,
    required this.hasMaxReached,
    required this.page,
});
  factory JobListingsState.inital(){
    return const JobListingsState(
        jobListings: [],
        isLoading: false,
        hasMaxReached: false,
        page: 0);
  }
  JobListingsState copyWith({
    List<JobListingsModel>? jobListings,
    bool? isLoading,
    bool? hasMaxReached,
    int? page,
}){
    return JobListingsState(
        jobListings: jobListings ?? this.jobListings,
        isLoading: isLoading ?? this.isLoading,
        hasMaxReached: hasMaxReached ?? this.hasMaxReached,
        page: page ?? this.page,
    );
  }
}