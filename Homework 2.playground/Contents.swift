import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var floatOne: Float = 3.14
var floatTwo: Float = 42.0
var floatToDouble: Double = Double(floatOne) + Double(floatTwo)
 print(floatToDouble)
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>". */

var numberOne = 10
var numberTwo = 2
let numberThree = (numberOne) / (numberTwo)

if numberThree  != 0 {
     print("When dividing \(numberOne) by \(numberTwo) ,the result is \(numberThree) ,the remainder is Ok ")
   }else{
       print("When dividing \(numberOne) by \(numberTwo) ,the result is NOT \(numberThree) ,the remainder is Carramba ")
   }
 
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var quantity = 11
var price : Int
if quantity <= 4 {
    price = 1000
}else{
    if quantity <= 9 {
        price = 950
}else{
     price = 850 }
    }
    var totalSum = price * quantity

print("new: \(quantity) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
var  userInputAge = "33a"
 var convertToInt = Int(userInputAge)
 if convertToInt == nil {
     print("convertToInt can not be converted to number")
 }

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
/*In progress (SORRY!!!)
let myAge = 37
let dayinYear = 365
let dayInLeapYear = 366
func daysbetween(start: Date, end: Date)-> Int {
    return Calendar.current.dateComponents([.day] , from: start, to: end).day!
}
print(daysbetween("20.02.1984", "08.07.2021"))
*/

//Total years: 37 , total months: 448, total days: 13655
//ALTERNATIVE
var currentDate: Date
var startDateString: String
var startDate: Date
var components: Calendar
var dayCount: Int
var monthCount: Int
var yearCount: Int
let formatter = DateFormatter()
func daysBetween(start: Date, end: Date) -> Int {
    return Calendar.current.dateComponents([.day], from:start, to: end).day!
}
currentDate = Date()
startDateString = "20.02.1984"
formatter.dateFormat = "dd.MM.yyyy"
startDate = formatter.date(from:startDateString)!
dayCount = daysBetween( start: startDate, end: currentDate)
func monthsBetween(start: Date, end: Date) -> Int {
    return Calendar.current.dateComponents([.month], from:start, to: end).month!
}
monthCount = monthsBetween( start: startDate, end: currentDate)
func yearsBetween(start: Date, end: Date) -> Int {
    return Calendar.current.dateComponents([.year], from:start, to: end).year!
}
yearCount = yearsBetween( start: startDate, end: currentDate)
print("Total years: \(yearCount) , total months: \(monthCount), total days: \(dayCount)")

/*let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
let calendar = Calendar.current
let currentDate = Date()
let myBirthDateString = "20.02.1984"
let myBirthDate = formatter.date(from: myBirthDateString) ?? Date()
let totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDate, to:
 currentDate).year
let totalMonthsFromBirth = calendar.dateComponents([.month], from: myBirthDate, to:
 currentDate).month
let totalDaysFromBirth = calendar.dateComponents([.day], from: myBirthDate, to:
 currentDate).day
 if totalYearsFromBirth == 0 || totalMonthsFromBirth == 0 || totalDaysFromBirth == 0 {
    print("Unable to check total years, months is \(totalYearsFromBirth ?? 0)")
}else{
    print("Total years: \(totalYearsFromBirth!) , total months: \(totalMonthsFromBirth!), total days: \(totalDaysFromBirth!)")
}

*/
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
let monthOfBirth = 2
var quarterOfBirth = ""
switch monthOfBirth {
case 1...3:
    quarterOfBirth = "first"
case 4...6:
    quarterOfBirth = "second"
case 7...9:
    quarterOfBirth = "third"
default:
    quarterOfBirth = "fourths"
}
print("I was born in \(quarterOfBirth) quarter")
