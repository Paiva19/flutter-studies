import 'package:dartz/dartz.dart';
import 'package:flutter_studies/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutter_studies/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_studies/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
  implements NumberTriviaRepository {}
  void main() {
    GetConcreteNumberTrivia usecase;
    MockNumberTriviaRepository mockNumberTriviaRepository;

    setUp(() {
      mockNumberTriviaRepository = MockNumberTriviaRepository();
      usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
    });


  final tNumber = 1;
  final tNumberTrivia = NumberTrivia("asda", 1, true, "asdasd");

  test(
    'should get trivia for the number from the repository',
  () async {
    // arrange
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);

    when(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber))
      .thenAnswer((realInvocation) async => Right(tNumberTrivia));

    // act
    final result = await usecase.execute(number: tNumber);
    // assert
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(MockNumberTriviaRepository);
  }  
  );

}