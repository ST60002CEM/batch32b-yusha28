
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/features/job_listings/data/data_source/job_listings_data_source.dart';
import 'package:workwise/features/job_listings/presentation/state/job_listings_state.dart';

final jobListingsViewModelProvider = StateNotifierProvider<JobListingsViewModel,JobListingsState>((ref){
  final jobListingsDataSource = ref.read(jobListingsDataSourceProvider);
  return JobListingsViewModel(jobListingsDataSource);
});


class JobListingsViewModel extends StateNotifier<JobListingsState>{
  final JobListingsDataSource _jobListingsDataSource;
  JobListingsViewModel(this._jobListingsDataSource):super(JobListingsState.inital()){
    getJobListings();

  }

  Future resetState() async{
    state = JobListingsState.inital();
    getJobListings();
  }

  Future getJobListings() async{
    state = state.copyWith(isLoading: true);
    final currentState = state;
    final page = currentState.page+1;
    final jobListings = currentState.jobListings;
    final hasReachedMax = currentState.hasMaxReached;

      if (!hasReachedMax) {
        // get data from data source
        final result = await _jobListingsDataSource.getJobListings(page);
        result.fold(
              (failure) =>
          state = state.copyWith(hasMaxReached: true, isLoading: false),
              (data) {
            if (data.isEmpty) {
              state = state.copyWith(hasMaxReached: true);
            } else {
              state = state.copyWith(
                jobListings: [...jobListings, ...data],
                page: page,
                isLoading: false,
              );
            }
          },
        );

    }
  }
}