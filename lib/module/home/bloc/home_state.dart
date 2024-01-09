part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadInProgress() = _LoadInProgress;
  const factory HomeState.appBarHeadersIndexChanged({
    required int index,
  }) = _AppBarHeadersIndexChanged;
  const factory HomeState.appBarHeadersAxisChanged({
    required AppBarHeadersAxis headersAxis
  }) = _AppBarHeadersAxisChanged;
  const factory HomeState.appBarHeadersColorChangedByIndex({
    required int index,
  }) = _AppBarHeadersColorChangedByIndex;
}