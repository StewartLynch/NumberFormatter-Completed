/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Numbers To Strings
 ### NumberFormatter, numberStyle, Locale
 A formatter that converts between numeric values and their textual representations.

*/
import Foundation

let number = 1234.5678
let numberFormatter = NumberFormatter()
code(for: "NumberFormatter numberStyles") {
    print(number)
    numberFormatter.numberStyle = .currency
    let numberString = numberFormatter.string(for: number)
    print(numberString ?? "Unknown Number")

}

code(for: "NumberFormatter numberStyles + Locale") {
    // https://gist.github.com/jacobbubu/1836273
//    print(Locale.current)
//    print(Locale.availableIdentifiers)
    let locale = Locale(identifier: "fr_CA")
    numberFormatter.locale = locale
    print(number)
    numberFormatter.numberStyle = .currency
    let numberString = numberFormatter.string(for: number)
    print(numberString ?? "Unknown Number")
    printAllFormats(for: number, localeIdentifier: "en_CA")
    printAllFormats(for: number, localeIdentifier: "fr_CA")
}

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
