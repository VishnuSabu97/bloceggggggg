part of 'apibloc_bloc.dart';
class ApiblocState {
  List<Products>? productlist = [];

  ApiblocState({required this.productlist});
}

final class ApiblocInitial extends ApiblocState {
  ApiblocInitial({required super.productlist});
}
