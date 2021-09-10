import "package:equatable/equatable.dart";
import 'package:meta/meta.dart';

class NumberTrivia extends Equatable {
  final String text;
  final int number;
  final bool found;
  final String type;

  NumberTrivia(this.text, this.number, this.found, this.type) {
    this.text = text;
    this.number = number;
    this.found = found;
    this.type = type;
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
