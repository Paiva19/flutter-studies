import "package:equatable/equatable.dart";

class NumberTrivia extends Equatable {
  final String text;
  final int number;
  final bool found;
  final String type;

  NumberTrivia(
    this.text,
    this.number,
    this.found,
    this.type, 
  );

  @override
  List<Object?> get props => [text, number, found, type];
}