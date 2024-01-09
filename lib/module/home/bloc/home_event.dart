part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeAppBarHeadersIndex({required int index}) = _ChangeAppBarHeadersIndex;
  const factory HomeEvent.changeAppBarHeadersAxis({required AppBarHeadersAxis headersAxis}) = _ChangeAppBarHeadersAxis;
  const factory HomeEvent.changeAppBarHeadersColorByColor({required int index}) = _ChangeAppBarHeadersColorByColor;
}