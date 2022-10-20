part of 'home_cubit.dart';

enum HomeTab { discover, favorites }

class HomeState extends Equatable {
  const HomeState({
    this.tab = HomeTab.discover,
  });

  final HomeTab tab;

  @override
  List<Object> get props => [tab];
}
