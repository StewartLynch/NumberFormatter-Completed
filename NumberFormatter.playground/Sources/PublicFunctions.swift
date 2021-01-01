
import Foundation

public func code(for title: String,
                    sampleCode: () -> Void) {
print("""
_____________________________
Results for: '\(title)'
""")
  sampleCode()
}

public enum NumberFormatterStyleEnums {
    public static let styles:[NumberFormatter.Style] = [.currency, .currencyAccounting, .decimal, .currencyPlural, .ordinal,.percent,.scientific, .percent, .spellOut, .none]
}

public func printAllFormats<T: Numeric>(for number: T, localeIdentifier: String) {
    print("--------------------------------------------------")
    print("Locale:".padding(toLength: 23, withPad: " ", startingAt: 0) + "\(localeIdentifier)")
    print("Original Number:".padding(toLength: 23, withPad: " ", startingAt: 0) + "\(number)")
    let locale = Locale(identifier: localeIdentifier)
    let numberStyles: [NumberFormatter.Style] = [.none, .decimal, .percent, .scientific, .spellOut, .ordinal, .currency, .currencyISOCode, .currencyPlural, .currencyAccounting]
    let formatter = NumberFormatter()
    formatter.locale = locale
    for numberStyle in numberStyles {
    formatter.numberStyle = numberStyle
        var prefixString = ""
        switch numberStyle {
        case .none:
            prefixString = ".none:"
        case .decimal:
            prefixString = ".decimal:"
        case .currency:
            prefixString = ".currency:"
        case .percent:
            prefixString = ".percent:"
        case .scientific:
            prefixString = ".scientific:"
        case .spellOut:
            prefixString = ".spellout:"
        case .ordinal:
            prefixString = ".ordinal:"
        case .currencyISOCode:
            prefixString = ".currencyISOCode:"
        case .currencyPlural:
            prefixString = ".currencyPlural:"
        case .currencyAccounting:
            prefixString = ".currencyAccounting:"
        @unknown default:
            prefixString = ".unknown:"
        }

        prefixString = prefixString.padding(toLength: 22, withPad: " ", startingAt: 0)
        print("\(prefixString) \(formatter.string(for: number)!)")
    }

}
