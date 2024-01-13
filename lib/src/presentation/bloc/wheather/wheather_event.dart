part of 'wheather_bloc.dart';

abstract class WheatherEvent extends Equatable {
  const WheatherEvent();
}

class WheatherBlocEvent extends WheatherEvent{
  final String title;

  const WheatherBlocEvent({required this.title});

  @override
  List<Object?> get props => [title];
}
