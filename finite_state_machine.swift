#!usr/bin/env swift
// http://gamedevelopment.tutsplus.com/tutorials/finite-state-machines-theory-and-implementation--gamedev-11867

class FSM {

  static let sharedInstance = FSM()

  enum PossibleStates: String {
    case A = "aardvark"
    case B = "beluga"
    case C = "casowary"
    case D = "dugong"
  }

  private var activeState: PossibleStates = PossibleStates.A


  func changeState() {
    switch activeState {
    case .A:
    activeState = PossibleStates.B
    case .B:
    activeState = PossibleStates.C
    case .C:
    activeState = PossibleStates.D
    case .D:
    activeState = PossibleStates.A  
    }
  }

  func getCurrentState() -> String {
    return activeState.rawValue
  }

}

let a = FSM.sharedInstance
print(a.getCurrentState())
a.changeState()
print(a.getCurrentState())
a.changeState()
print(a.getCurrentState())
a.changeState()
print(a.getCurrentState())
a.changeState()
print(a.getCurrentState())
