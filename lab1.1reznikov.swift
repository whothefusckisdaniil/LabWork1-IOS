import Foundation

func add(_ num1: Double, _ num2: Double) -> Double 
{
    return num1 + num2
}

func subtract(_ num1: Double, _ num2: Double) -> Double 
{
    return num1 - num2
}

func multiply(_ num1: Double, _ num2: Double) -> Double 
{
    return num1 * num2
}

func divide(_ num1: Double, _ num2: Double) -> Double? 
{
    guard num2 != 0 else 
    {
        print("Error: Cannot calculate square root of a negative number.")
        return nil
    }
    return num1 / num2
}

func power(_ num: Double, _ exponent: Double) -> Double 
{
    return pow(num, exponent)
}

func squareRoot(_ num: Double) -> Double 
{
    return sqrt(num)
}

func getUserInput() -> Double? 
{
    if let input = readLine(), let number = Double(input) 
    {
        return number
    } 
    else 
    {
        print("Error: Invalid input. Please enter a valid number.")
        return nil
    }
}

func calculator() 
{
    print("Enter the first number:")
    guard let num1 = getUserInput() else { return }

    print("Enter the operator (+, -, *, /, ^, sqrt):")
    guard let operatorSymbol = readLine() else { return }

    var result: Double?

    switch operatorSymbol 
    {
    case "+":
        print("Enter the second number:")
        guard let num2 = getUserInput() else { return }
        result = add(num1, num2)
    case "-":
        print("Enter the second number:")
        guard let num2 = getUserInput() else { return }
        result = subtract(num1, num2)
    case "*":
        print("Enter the second number:")
        guard let num2 = getUserInput() else { return }
        result = multiply(num1, num2)
    case "/":
        print("Enter the second number:")
        guard let num2 = getUserInput() else { return }
        result = divide(num1, num2)
    case "^":
        print("Enter the exponent:")
        guard let exponent = getUserInput() else { return }
        result = power(num1, exponent)
    case "sqrt":
        result = squareRoot(num1)
    default:
        print("Error: Invalid operator.")
        return
    }

    if let resultValue = result {
        print("Result is: \(resultValue)")
    }
}

calculator()