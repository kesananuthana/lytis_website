part of 'icons_bloc.dart';

@immutable
sealed class IconsState {}

final class IconsInitial extends IconsState {}


final class IconsHover extends IconsState{
  final bool isHover;
  IconsHover(this.isHover);
}