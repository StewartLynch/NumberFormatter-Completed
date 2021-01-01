/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Rounding and Significant Digits
 
 */
import Foundation

let number = 1234.5678
let numbers = [1234456.567, 112, 0.235, 12456.3, 213456, 789.12]

code(for: "Significant Digits") {
    let numberFormatter = NumberFormatter()
    numberFormatter.usesSignificantDigits = true
//    numberFormatter.maximumSignificantDigits = 10
//    numberFormatter.minimumSignificantDigits = 10
    //--------------------------------------------
//    let numberString = numberFormatter.string(for: number)
//    print(number)
//    print(numberString ?? "Unknown Number")
    numberFormatter.minimumSignificantDigits = 6
    numberFormatter.maximumSignificantDigits = 6
    for number in numbers {
        let numberString = numberFormatter.string(for: number)
        print("\(number) -> \(numberString ?? "unknown number")")
    }
}

code(for: "Integer and FractionDigits") {
    let numberFormatter = NumberFormatter()
    numberFormatter.minimumIntegerDigits = 10
    numberFormatter.minimumFractionDigits = 2
    numberFormatter.maximumIntegerDigits = 3
    //--------------------------------------------
    for number in numbers {
        let numberString = numberFormatter.string(for: number)
        print("\(number) -> \(numberString ?? "unknown number")")
    }
}

code(for: "Rounding Behaviour - Whole numbers") {
    let numbers = [1234.5, 1234.4, 1234.6]
    let numbers2 = [1235.5, 1235.4, 1235.6]
    let numberFormatter = NumberFormatter()
    numberFormatter.roundingMode = .ceiling
    //--------------------------------------------
    for number in numbers {
        let numberString = numberFormatter.string(for: number)
        print("\(number) -> \(numberString ?? "unknown number")")
    }
    print("----------------------------------------")
    for number in numbers2 {
        let numberString = numberFormatter.string(for: number)
        print("\(number) -> \(numberString ?? "unknown number")")
    }
}

code(for: "Rounding Behaviour - Fractional numbers") {
    let numbers = [0.243, 0.245, 0.246, 0.235]
    let numberFormatter = NumberFormatter()
    numberFormatter.minimumFractionDigits = 2
    numberFormatter.roundingMode = .floor
    //--------------------------------------------
    for number in numbers {
        let numberString = numberFormatter.string(for: number)
        print("\(number) -> \(numberString ?? "unknown number")")
    }
}
/*:
 [< Previous](@previous)           [Home](Introduction)            [Next >](@next)
 */
