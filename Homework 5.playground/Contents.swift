import UIKit

/*Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audit Than run getSpecs() for audiQ7 and audiTT
 */
/*struct Car {
var name: String
var color: String
func getSpec(){
  print("\(name), \(color)")
}
    
}


let audiQ7 = Car(name:"Q7", color:"Pink" )
var audiTT = audiQ7
audiTT.name = "TT"
audiTT.color = "Golden"
audiQ7.getSpec()
audiTT.getSpec()
*/

/*
Exercise 2Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */

 struct Car{
var name: String
var productionYear: Int
var horsPower: Int
func getSpec(){
  print("Audi\(name), production yaer \(productionYear), horspowers \(horsPower) ")
}
}

let audiQ7 = Car(name:"Q7", productionYear: 2019, horsPower: 1266  )
var audiTT = audiQ7
audiTT.name = "TT"
audiTT.productionYear = 2013
audiTT.horsPower = 1455
audiQ7.getSpec()
audiTT.getSpec()

/*
 Exercise 1.1 Create a
func calculateResult with argument firstNumber, parametrs numberOne, data type Int, +
argument andSecondNumber, parametrs numberTwo, data type Int ,+
argument withCalculationType, parametrs calculationType,data type CalculationType
and everything will
 return Int.
Than use switch case to calculate and return Int result
 var result = numberOne
 switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")    return result */
/*
enum CalculationType :String {
  case addition = "+"
  case substraction = "-"
  case multiplication = "*"
  case division = "/"
}
var mycalculationType = CalculationType.addition
var numberOne: Int
var numberTwo :Int
func calculateResult(numberOne:Int, numberTwo: Int,
calculationType: CalculationType) -> Int {
/*func calculateResult(numberOne:Int, numberTwo: Int){
  var result = numberOne
  */
    var result = numberOne
  switch calculationType {
    case.addition: result += numberTwo
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    case.substraction: result -= numberTwo
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    case.multiplication: result *= numberTwo
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    case.division: result /= numberTwo
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
  }
  return result
}
*/

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/
enum CalculationType :String {
  case addition = "Addition"
  case substraction = "Substraction"
  case multiplication = "Multiplication"
  case division = "Division"
}
var mycalculationType = CalculationType.addition
var numberOne: Int
var numberTwo :Int

//numberOne = 2
//numberTwo = 1

func calculateResult(numberOne:Int, numberTwo: Int,
calculationType: CalculationType) {
    
    var result = numberOne
    
  switch calculationType {
    case.addition: result += numberTwo
    case.substraction: result -= numberTwo
    case.multiplication: result *= numberTwo
    case.division: result /= numberTwo
  }
  //print( numberOne, calculationType.rawValue , numberTwo, "=", result)
    
print("Result: \(calculationType.rawValue)  \(numberOne) and \(numberTwo) =  \(result)" )
}
calculateResult(numberOne: 2, numberTwo: 1, calculationType:CalculationType.addition )
calculateResult(numberOne: 2, numberTwo: 1, calculationType:CalculationType.substraction )
calculateResult(numberOne: 2, numberTwo: 1, calculationType:CalculationType.division )
calculateResult(numberOne: 2, numberTwo: 1, calculationType:CalculationType.multiplication )
