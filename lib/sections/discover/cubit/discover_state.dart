part of 'discover_cubit.dart';

class DiscoverState extends Equatable {
  const DiscoverState({this.currentImage, this.discardedImage});

  final CoffeeImage? currentImage;
  final CoffeeImage? discardedImage;
  
  @override
  // TODO: implement props
  List<Object?> get props => [currentImage, discardedImage];
}
