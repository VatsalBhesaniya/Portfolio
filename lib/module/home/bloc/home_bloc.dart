import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/utils/app_enums.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc() : super(const HomeState.initial()) {
    on<_ChangeAppBarHeadersIndex>(_onChangeAppBarHeadersIndex);
    on<_ChangeAppBarHeadersColorByColor>(_onChangeAppBarHeadersColorByColor);
    on<_ChangeAppBarHeadersAxis>(_onChangeAppBarHeadersAxis);
  }
  
  int _appBarHeaderIndex = 0;
  int get appBarHeaderIndex => _appBarHeaderIndex;

  FutureOr<void> _onChangeAppBarHeadersIndex(
    _ChangeAppBarHeadersIndex event,
    Emitter<HomeState> emit,
  ) {
    _appBarHeaderIndex = event.index;
    emit(_AppBarHeadersIndexChanged(index: _appBarHeaderIndex));
  }

  FutureOr<void> _onChangeAppBarHeadersColorByColor(
    _ChangeAppBarHeadersColorByColor event,
    Emitter<HomeState> emit,
  ) {
    _appBarHeaderIndex = event.index;
    emit(_AppBarHeadersColorChangedByIndex(index: _appBarHeaderIndex));
  }

  AppBarHeadersAxis _appBarHeaderAxis = AppBarHeadersAxis.horizontal;
  AppBarHeadersAxis get appBarHeaderAxis => _appBarHeaderAxis;

  FutureOr<void> _onChangeAppBarHeadersAxis(
    _ChangeAppBarHeadersAxis event,
    Emitter<HomeState> emit,
  ) {
    _appBarHeaderAxis = event.headersAxis;
    emit(_AppBarHeadersAxisChanged(headersAxis: _appBarHeaderAxis));
  }
}
