part of 'anime_bloc.dart';

@immutable
sealed class AnimeState {}

final class AnimeInitial extends AnimeState {}
class AnimeBlocLoading extends AnimeState{}
class AnimeBlocLoaded extends AnimeState{}
class AnimeBlocError extends AnimeState{}
