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
    var isOpenWindows: Bool { get set }
    var isOpenDoors: Bool { get set }
    mutating func performActions(_ actions: Actions)
}

extension Carable {
   mutating func performActions(_ actions: Actions) {
        switch actions {
        case.openWindow:
            isOpenWindows = true
        case.closeWindow:
            isOpenWindows = false
        default:
            print("...")
        }
    }
}


class SportCar: Carable {
    var isOpenWindows: Bool
    
    var isOpenDoors: Bool
    
    var isEngineStarted: Bool = true

    init(isEngineStarted: Bool, isOpenWindows: Bool, isOpenDoors: Bool) {
        self.isEngineStarted = isEngineStarted
        self.isOpenWindows = isOpenWindows
        self.isOpenDoors = isOpenDoors
    }
    func performActions(_ actions: Actions) {
        switch actions {
        case.startEngine:
            isEngineStarted = true
        case.stopEngine:
            isEngineStarted = false
        default:
            break

        }
    }
    func printProperties() {
        print("is engine state", isEngineStarted)
    }
}



class TrunkCar: Carable {
    var isOpenWindows: Bool
    
    var isOpenDoors: Bool
    
    var isOpenTrunk: Bool = false

    init(isOpenTrunk: Bool, isOpenWindows: Bool, isOpenDoors: Bool) {
        self.isOpenTrunk = isOpenTrunk
        self.isOpenWindows = isOpenWindows
        self.isOpenDoors = isOpenDoors
    }
    func performActions(_ actions: Actions) {
        switch actions {
        case.openTrunk:
            isOpenTrunk = true
        case.closeTrunk:
            isOpenTrunk = false
        default:
            break

        }
    }
}


extension SportCar: CustomStringConvertible {
    var description: String {
        return "sport car data"
    }
}


extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "trunk car data"
    }
}


var car = SportCar(isEngineStarted: true, isOpenWindows: true, isOpenDoors: false)
var car1 = TrunkCar(isOpenTrunk: false, isOpenWindows: false, isOpenDoors: true)


car.performActions(.startEngine)
car1.performActions(.openTrunk)


print(car)
print(car1)






