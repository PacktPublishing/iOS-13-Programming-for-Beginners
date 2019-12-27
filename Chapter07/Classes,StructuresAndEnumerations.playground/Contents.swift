// Enumerations
// Traffic light program with enumerations
enum TrafficLight {
    case red
    case yellow
    case green

    func trafficLightDescription() -> String {
        switch self {
        case .red:
            return "red"
        case .yellow:
            return "yellow"
        default:
            return "green"
        }
    }
}

var trafficLight = TrafficLight.red
print(trafficLight.trafficLightDescription())
