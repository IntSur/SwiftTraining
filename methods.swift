enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
let OvenLight = TriStateSwitch.low
print(OvenLight)
OvenLight.next()
print(OvenLight)
