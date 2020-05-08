import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height,this.weight}){
   _bmi =  weight/pow(height/100,2);
  }

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if( _bmi >= 25 ){
      return 'OverWeight';
    }else if( _bmi > 18.5 ){
      return 'Normal';
    }else{
      return 'UnderWeight';
    }
  }

  String getInterpretation(){
    if( _bmi >= 25 ){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if( _bmi > 18.5 ){
      return "You Have a normal Body weight. Good job!";
    }else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}