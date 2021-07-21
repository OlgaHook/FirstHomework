import UIKit

/*
Exercise 1
1.Create new Class Orange(Fruit).
 Inside the Class declare:
 3.Give specific value for:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/
     var color = "Orange"
     var taste = "Sweet"
     var weight = 0.66
 
/*print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/


class Oranges {
     var color = ""
     var taste = ""
     var weight = 0.0
    
     init(color: String, taste: String, weight: Double ){
     self.color = color
     self.taste = taste
     self.weight = weight
     }
}
let someOrange = Oranges(color: "green", taste: "salty", weight: 1)

print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")



class Figure {
    
    var height:Int = 0
    var width: Int = 0
    var radius:Int = 0
    var square:Int = 0
    var perimeter:Int = 0
    
    init(height: Int, width: Int, radius: Int, square: Int, perimeter: Int) {
         self.height = height
         self.width = width }
    
         func squareOfFigure() -> Int {
           square = height * width
           return square }
    
         func perimeterOfFigure() -> Int {
           perimeter = 2 * height + 2 * width
            return perimeter }
}

class Rectangle:Figure {
    
    override func squareOfFigure() -> Int {
           square = height * width
           return square }
    
override func perimeterOfFigure() -> Int {
           perimeter = 2 * height + 2 * width
            return perimeter }
}

/*var rectangle = Figure(height: 3, width:3, radius: 1, square: 1, perimeter: 1)
print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")*/

 var myRectangle = Rectangle(height: 4, width: 2, radius: 1, square: 1, perimeter: 1)

 var myRectangleSquare: Int
myRectangleSquare = myRectangle.squareOfFigure()

var myRectanglePerimetr : Int
myRectanglePerimetr = myRectangle.perimeterOfFigure()

//print(myRectangleSquare ,myRectanglePerimetr )
print("Rectangle area is: \(myRectangleSquare), and perimeter Of Figure is: \(myRectanglePerimetr)")
