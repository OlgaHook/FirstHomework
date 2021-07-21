import UIKit
 /*Lesson 3
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
var amount: Double = 500_000
var year: Double = 5
var rate: Double = 0.001
var profit : Double
for period in 1...5{
    profit = amount * rate
    amount = amount + profit
    print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(amount) Eur !")
}
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
var arrayOfIntegers : [Int] = []
arrayOfIntegers = [1, 2, 3, 4, 5,6]

for n in arrayOfIntegers{
    if(n % 2 == 0){
        print("My even numbers is \(n)")
    }
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post.
 During the day, bug can climb two meters, during the night bug slides down to 1 meter.
 Determine with the help of the cycle how many days bug will climb on the top of the post.
 Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var wayToGo: Double = 10
let dayWay: Double = 2
let nightWay: Double = -1
var dayNightWay:Double = dayWay + nightWay
while true {
    print("wayToGo is now: \(wayToGo)")
    wayToGo -= 1
    if wayToGo == 00 {
        break
    }
}

//Coreect "BUG" homework
var distance = 0
var numberOfDays = 0
var isDay = true

while distance != 10 {
    
    if isDay {
        distance += 2
        numberOfDays += 1
        isDay = false
    }else{
        distance -= 1
        isDay = true
    }
}
print("Bug will spend \(numberOfDays) to reach the top")


/* Lesson 4
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
var myTeam: String = "Girls"
 var resultsOfGames = [
     "firstGame ": "23:11",
     "secondGame ": "33:12"
 ]
 print("\(myTeam) against Brooklyn Nets scored \(resultsOfGames)")

/*
 Exercise 2
  Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
  Create a func to calculateCash sum of your cash inside your wallet.
  Run the func.
  */
 //first
 func sum() -> Int  {
     let banknoteOne = 5
     let banknoteTwo = 10
     let banknoteThree = 20
     let banknoteFour = 50
     let banknoteFive = 100
     let banknoteSix = 200
     let banknoteSeven = 500
     return banknoteOne + banknoteTwo + banknoteThree + banknoteFour + banknoteFive + banknoteSix + banknoteSeven
      }
      var result = sum()
      print(result)
 //second
 var allBanknotes = [5, 10, 20, 50, 100, 200, 500 ]

func calculateAllBanknotes( allBanknotes: [Int]) -> Int {
    var  sum = 0
    
    for sumOfAllBanknotes in allBanknotes{
        sum = sum + sumOfAllBanknotes
    }
    return sum
}
print(sum)

 //let sum = setOfInts.reduce(0, +)
  //print(sum)
 
