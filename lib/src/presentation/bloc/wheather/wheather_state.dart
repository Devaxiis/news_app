part of 'wheather_bloc.dart';

abstract class WheatherState extends Equatable {
  const WheatherState();
}

class WheatherInitial extends WheatherState {
  @override
  List<Object> get props => [];
}

class WheatherLoading extends WheatherState {
  @override
  List<Object> get props => [];
}

class WheatherSuccess extends WheatherState {

  final String name;
  final String title;
  final String desc;
  final int temp;

  const WheatherSuccess({required this.name,required this.title,required this.desc,required this.temp});

  @override
  List<Object> get props => [name,title,desc,];
}

class WheatherFailure extends WheatherState {
  @override
  List<Object> get props => [];
}
