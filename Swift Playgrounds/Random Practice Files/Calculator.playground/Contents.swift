/*
 Create a basic calculator
 
 (Doubles), firstParameter and secondParameter and a variable operator (String with possible values - +, -, /, *)
 You will write a switch case for the operator choices and print the result of arithmetic operation based on the operator chosen by the user.

 Eg 1:
 firstParameter = 3.0
 secondParameter = 15.1
 operator = "+"

 Desired Outcome:
 30 + 15.1 = 18.1
 
 Things I will need:
 Switch
 Constants
 functions
 */


func calculator(firstParameter: Double, secondParameter: Double, arithmeticOperator: String) -> Double
{
    switch arithmeticOperator {
    case "+":
        return firstParameter + secondParameter
    case "-":
        return firstParameter - secondParameter
    case "*":
        return firstParameter * secondParameter
    case "/":
        return firstParameter / secondParameter
    default:
        return firstParameter
    }
}

calculator(firstParameter: 3.0, secondParameter: 15.1, arithmeticOperator: "+")
calculator(firstParameter: 29, secondParameter: 10, arithmeticOperator: "-")
calculator(firstParameter: 3.0, secondParameter: 4.0, arithmeticOperator: "*")
calculator(firstParameter: 12, secondParameter: 4.0, arithmeticOperator: "/")


