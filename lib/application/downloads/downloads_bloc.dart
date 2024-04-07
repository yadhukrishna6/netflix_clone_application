import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.inital()) {
    on<_GetDownloadsImage>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            downloadsFailureOrSuccesOption: none(),
          ),
        );
        final Either<MainFailure, List<Downloads>> downloadsOption =
            await _downloadsRepo.getDownloadsImages();
        log(downloadsOption.toString() as num);
        emit(
          downloadsOption.fold(
            (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccesOption: some(
                Left(failure),
              ),
            ),
            (succes) => state.copyWith(
              isLoading: false,
              downloads: succes,
              downloadsFailureOrSuccesOption: some(
                right(succes),
              ),
            ),
          ),
        );
      },
    );
  }
}
