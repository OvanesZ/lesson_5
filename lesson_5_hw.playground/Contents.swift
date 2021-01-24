import UIKit

enum Actions {
    case openWindow
    case closeWindow
    case openDoor
    case closeDoor
    case startEngine
    case stopEngine
    case openTrunk
    case closeTrunk
}

protocol Carable {
//    var isOpenWindows: Bool { get }
//    var isOpenDoors: Bool { get }
    func performActions(_ actions: Actions)
}

extension Carable {
    func performActions(_ actions: Actions) {
        print(actions)
    }
}


class SportCar: Carable {
    var isEngineStarted: Bool = false
    
    init(isEngineStarted: Bool) {
        self.isEngineStarted = isEngineStarted
    }
}


class TrunkCar: Carable {
    var isOpenTrunk: Bool = false
    
    init(isOpenTrunk: Bool) {
        self.isOpenTrunk = isOpenTrunk
    }
}
