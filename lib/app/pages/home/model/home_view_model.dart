import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';

@immutable
class HomeViewModel extends Equatable {
  final String userName;
  final String userBalance;
  final List<OfferModel> offers;

  const HomeViewModel(
      {required this.userName,
      required this.userBalance,
      required this.offers});

  HomeViewModel copyWith({
    String? userName,
    String? userBalance,
    List<OfferModel>? offers,
  }) =>
      HomeViewModel(
        userName: userName ?? this.userName,
        userBalance: userBalance ?? this.userBalance,
        offers: offers ?? this.offers,
      );

  @override
  List<Object?> get props => [
        userName,
        userBalance,
        offers,
      ];
}
