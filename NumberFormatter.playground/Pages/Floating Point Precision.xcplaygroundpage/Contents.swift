/*:
 [< Previous](@previous)           [Home](Introduction)
 
 ## Floating Point Precision in Strings
 
 */
import Foundation

code(for: "Formatted Doubles") {
    //https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Strings/Articles/formatSpecifiers.html
    let portion:Double = 245/3
    print(portion)
    let amountOwing = String(format: "$%.2f", portion)
    print(amountOwing)

}

code(for: "Hex") {
    let number = 255
    let hex = String(format: "\(number) - hex: %X", number)
    print(hex)
}

code(for: "Color") {
    // What is the hex value for a colour that is red:120/255, green 255/255 abd blue 125/255?
    let hexColor = String(format: "%X%X%X", 120, 255, 125)
    print(hexColor)
}
//: [< Previous](@previous)           [Home](Introduction)
