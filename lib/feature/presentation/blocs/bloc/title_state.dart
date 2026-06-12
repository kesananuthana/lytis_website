part of 'title_bloc.dart';

@immutable
sealed class TitleState {}

final class TitleInitial extends TitleState {}

final class TitleHover extends TitleState{
  final bool isHover;
  TitleHover(this.isHover);
}