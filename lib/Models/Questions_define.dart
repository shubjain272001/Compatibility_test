
import 'package:compatibilty_test/answerButton.dart';
import 'package:compatibilty_test/data/Questions.dart';

class question{

const question( this.text ,this.answers);
 
 final String text ;
 final List <String> answers ;

 List<String> GetShuffledList() {

  final shuffledList = List.of(answers) ;
  shuffledList.shuffle();
  return shuffledList ;
 }

}