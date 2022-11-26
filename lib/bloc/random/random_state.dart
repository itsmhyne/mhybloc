part of 'random_bloc.dart';

abstract class RandomState extends Equatable {
  const RandomState();
  
  @override
  List<Object> get props => [];
}

class RandomInitial extends RandomState {}
