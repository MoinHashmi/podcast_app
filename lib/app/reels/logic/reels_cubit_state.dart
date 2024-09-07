
part of 'reels_cubit.dart';

@freezed
abstract class ReelsCubitState with _$ReelsCubitState {
  const factory ReelsCubitState.initial() = _Initial;
  const factory ReelsCubitState.loading() = _Loading;
  const factory ReelsCubitState.loaded(List<Video> reels, bool hasReachedMax) = _Loaded;
  const factory ReelsCubitState.error(String message) = _Error;
}