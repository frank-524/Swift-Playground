//Continuation of the Swift tour
// A function can take another function as one of its arguments

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

/*
    Functions are actually a special case of closures: blocks of code that can be called later.
    You can write a closure without a name by surrounding code with braces ({}).
    Use in to separate the arguments and return type from the body.
 */
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

/*
    You have several options for writing closures more concisely.
    When a closure's type is already known, such as the callback for a delegate, you can
    omit the type of its parameters, its return type, or both.
 */
let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

/*
    You can refer to parameters by number instead of by name-this approach is especially useful
    in very short closures
 */
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

/*
    Objects and Classes
    Use class followed by the class's name to create a class
 */
class Shape
{
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

/*
    Create an instance of a class by putting parentheses after the class name.
 Use dot syntax to access the properties and methods of the instance
 */
var shape = Shape() // Create an instance of Shape class
shape.numberOfSides = 7 // Use dot syntax to access the properties and methods of the instance
var shapeDescription = shape.simpleDescription()

print(shapeDescription)

/*
    The init is used to create an initializer to set up the class
 when an instance is created.
 
    init creates the constructor
 */

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name // notice how self is used to distingush the name property from the name argument to the initializer
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides)"
    }
}

/*
    Subclassess include their superclasss name after their classs name,
 separated by a colon. You can omit or include a superclass as needed
 
 Methods on a subclass that override the superclass's implementation are marked with override--overriding a method by accident, without override, causes an error.
 */

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square ")
test.area()
test.simpleDescription()

// Create another subclass of NamedShape called Circle

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
    }
    
    func area() -> Double {
        return (Double.pi) * (radius * radius)
    }
    
    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)."
    }
}
let test2 = Circle(radius: 3, name: "my test circle")
test2.area()
test2.simpleDescription()

/*
    In addition to simple properties that are stored, properties can have a getter and a setter
 */

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            // In the setter, the new value has the implicit name newValue. You can provide an explicit name in parentheses after set
            sideLength = newValue / 3.0
            
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

/*
    Notice that the initializer for the EquilateralTriangle class has three different steps:
 1. Setting the value of properties that the subclass declare
 2. Calling the superclass's initializer
 3. Changing the value of properties defined by the superclass. Any additional setup work that uses methods, getters, or setters can also be done at this point
 */

/*
    When working with optional values, you can write ? before operations like method, properties, and subscripting.
 
 If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil.
 
 Otherwise, the optional value is unwrapped, and everything after the ? acts on the unwrapped value.
 
 In both cases (code below), the value of the whole expression is an optional value
 */

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
