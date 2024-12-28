part of 'juice_bloc.dart';

sealed class JuiceState extends Equatable{

  @override
  List<Object?> get props => [];
}

final class JuiceLoading extends JuiceState{
}

final class JuiceSuccess extends JuiceState{
  final Juice juice;
  final int count;
  final bool expanded;

  JuiceSuccess({required this.juice,required this.count,required this.expanded});
  @override
  List<Object?> get props => [juice,count,expanded];

}

final class JuiceError extends JuiceState{
  final String error;

  JuiceError({required this.error});

  @override
  List<Object?> get props => [error];
}
